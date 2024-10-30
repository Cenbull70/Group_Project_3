// Initialize the map and zoom to Kansas
let myMap = L.map("map", {
  center: [38.54532, -98.13973],
  zoom: 7
});

// Add event listener to the reset button
document.getElementById("resetZoom").addEventListener("click", () => {
  myMap.setView([38.54532, -98.13973], 7); // Reset to Kansas view
  countySelect.value = ""; // Clear dropdown selection
  if (selectedCountyLayer) selectedCountyLayer.removeFrom(myMap); // Remove highlighted county layer
  selectedCountyLayer = null; // Clear reference to the selected layer
  clearSidebar(); // Clear sidebar when reset is clicked
});

// Define and add the Thunderforest base layer
let baseLayer = L.tileLayer('https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png?apikey=739b4254a9964186a16c957b8b1b52dd', {
  attribution: '© Thunderforest'
}).addTo(myMap);

// Define buffer radii in meters
const radius = 400; // For analysis calculations (1 mile)
const displayRadius = 10000; // For display visualization (10 km)

let selectedCountyLayer; // Track selected county layer for removal

// Create a custom pane for the county boundaries with a lower z-index
myMap.createPane("countyPane");
myMap.getPane("countyPane").style.zIndex = 250; // Set a lower z-index for county boundaries

// Create a custom pane for haunted places with a higher z-index
myMap.createPane("hauntedPane");
myMap.getPane("hauntedPane").style.zIndex = 1000; // Higher z-index to ensure haunted places are on top

// Load hospitals and cemeteries data
let hospitals = [];
let cemeteries = [];

// Load hospitals data
d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/medical.json")
  .then(data => hospitals = data.map(hospital => ({
    name: hospital.name,
    latitude: hospital.lat,
    longitude: hospital.long
  })))
  .catch(() => console.log("Failed to load hospital data"));

// Load cemeteries data
d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/cemeteries_2013.json")
  .then(data => cemeteries = data.map(cemetery => ({
    name: cemetery.name,
    latitude: cemetery.latitude,
    longitude: cemetery.longitude
  })))
  .catch(() => console.log("Failed to load cemetery data"));

// Sidebar update function for nearby places
function updateSidebar(hauntedLocation, nearbyHospitals, nearbyCemeteries) {
  const locationInfo = document.getElementById("locationInfo");
  locationInfo.innerHTML = `<h3>${hauntedLocation}</h3>`;
  
  // Add hospitals within 5 miles
  if (nearbyHospitals.length) {
    locationInfo.innerHTML += `<h4>Hospitals within 5 miles:</h4><ul>`;
    nearbyHospitals.forEach(hospital => locationInfo.innerHTML += `<li>${hospital.name || "Unnamed Hospital"}</li>`);
    locationInfo.innerHTML += `</ul>`;
  } else {
    locationInfo.innerHTML += `<p>No hospitals within 5 miles.</p>`;
  }
  
  // Add cemeteries within 5 miles
  if (nearbyCemeteries.length) {
    locationInfo.innerHTML += `<h4>Cemeteries within 5 miles:</h4><ul>`;
    nearbyCemeteries.forEach(cemetery => locationInfo.innerHTML += `<li>${cemetery.name || "Unnamed Cemetery"}</li>`);
    locationInfo.innerHTML += `</ul>`;
  } else {
    locationInfo.innerHTML += `<p>No cemeteries within 5 miles.</p>`;
  }
}

// New function to update the sidebar with county information
function updateCountySidebar(countyName, population) {
  const locationInfo = document.getElementById("locationInfo");
  locationInfo.innerHTML = `<h3>${countyName} County</h3>`;
  locationInfo.innerHTML += `<p>Population: ${population || "Data not available"}</p>`;
}

// Clear sidebar function
function clearSidebar() {
  const locationInfo = document.getElementById("locationInfo");
  locationInfo.innerHTML = `<p>Select a location to view more details</p>`;
}

// Load haunted places, county boundaries, census data, and historical sites
Promise.all([
  d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/Haunted_Place_KS.geojson"),
  d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/kansas-with-county-boundaries_1099.geojson"),
  d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/us_census_data_2024.json"),
  d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/KS_historical.geojson")
]).then(([hauntedData, countyData, censusData, historicalData]) => {
  
  // Haunted Places Heat Layer
  const heatData = hauntedData.features.map(feature => [feature.geometry.coordinates[1], feature.geometry.coordinates[0], 0.5]);
  const heatLayer = L.heatLayer(heatData, { radius: 25, blur: 15, maxZoom: 8 });
  
  // Haunted Places Layer with Click Event to Show Nearby Places
  const hauntedLayer = L.geoJSON(hauntedData, {
    onEachFeature: (feature, layer) => {
      const { location, city, state, description } = feature.properties;
      const hauntedPopup = `<h4>Haunted Place: ${location}</h4><hr><p>${city}, ${state}</p><p>Incident: ${description}</p>`;
      layer.bindPopup(hauntedPopup);

      // Add click event to display nearby hospitals and cemeteries
      layer.on("click", () => {
        const hauntedPoint = turf.point(feature.geometry.coordinates);

        // Filter hospitals within 5 miles
        const nearbyHospitals = hospitals.filter(hospital => {
          const hospitalPoint = turf.point([hospital.longitude, hospital.latitude]);
          const distance = turf.distance(hauntedPoint, hospitalPoint, { units: "miles" });
          return distance <= 5;
        });

        // Filter cemeteries within 5 miles
        const nearbyCemeteries = cemeteries.filter(cemetery => {
          const cemeteryPoint = turf.point([cemetery.longitude, cemetery.latitude]);
          const distance = turf.distance(hauntedPoint, cemeteryPoint, { units: "miles" });
          return distance <= 5;
        });

        // Update sidebar with information about the nearby hospitals and cemeteries
        updateSidebar(location, nearbyHospitals, nearbyCemeteries);
      });
    },
    pointToLayer: (feature, latlng) => L.circleMarker(latlng, { radius: 8, color: "white", fillColor: "purple", fillOpacity: 0.5, weight: 1 }),
    pane: "hauntedPane" // Assign to the custom pane with higher z-index
  }).addTo(myMap); // Add only haunted places on map load

  // County Boundaries Layer with Dropdown Functionality, added to the custom pane
  const countyLayer = L.geoJSON(countyData, {
    style: { color: "gray", weight: 1.5, fillOpacity: 0 }, // No fill color for counties
    pane: "countyPane", // Assign to the custom pane with a lower z-index
    interactive: false // Prevents the county layer from capturing clicks
  }).addTo(myMap);

  const countySelect = document.getElementById("countySelect");
  countyData.features.map(feature => feature.properties.name).sort().forEach(countyName => {
    const option = document.createElement("option");
    option.value = countyName;
    option.text = countyName;
    countySelect.add(option);
  });

  countySelect.addEventListener("change", () => {
    const selectedCounty = countySelect.value;
    const county = countyData.features.find(feature => feature.properties.name === selectedCounty);

    if (county) {
      if (selectedCountyLayer) selectedCountyLayer.removeFrom(myMap); // Remove previous selected county
      selectedCountyLayer = L.geoJSON(county, { style: { color: "blue", weight: 2, fillOpacity: 0.1 }, pane: "countyPane" }).addTo(myMap);
      myMap.fitBounds(selectedCountyLayer.getBounds());

      // Update sidebar with county information
      const population = county.properties.population || "Data not available";
      updateCountySidebar(selectedCounty, population);
    }
  });

  // Census Heatmap Layer
  const kansasData = censusData
    .filter(item => item.state === "Kansas")
    .map(item => ({
      ...item,
      county: item.county.replace(" County", "").trim(),
      population: parseInt(item.population.replace(/,/g, ""), 10)
    }));

  kansasData.forEach(county => {
    const countyFeature = countyData.features.find(
      feature => feature.properties.name === county.county
    );
    if (countyFeature) {
      countyFeature.properties.population = county.population;
    } else {
      console.log(`No match for county: ${county.county}`);
    }
  });

  const getColor = (population) => {
    return population > 100000 ? '#800026' :
           population > 50000  ? '#BD0026' :
           population > 20000  ? '#E31A1C' :
           population > 10000  ? '#FC4E2A' :
           population > 5000   ? '#FD8D3C' :
           population > 2000   ? '#FEB24C' :
           population > 1000   ? '#FED976' :
                                  '#FFEDA0';
  };

  const heatmapLayer = L.geoJSON(countyData, {
    style: (feature) => {
      const population = feature.properties.population || 0;
      return {
        fillColor: getColor(population),
        weight: 1,
        opacity: 1,
        color: 'white',
        fillOpacity: 0.7
      };
    },
    onEachFeature: (feature, layer) => {
      const population = feature.properties.population || "Data not available";
      layer.bindPopup(
        `<strong>${feature.properties.name} County</strong><br>Population: ${population}`
      );
    }
  });

  // Historical Sites Layer
  const historicalLayer = L.geoJSON(historicalData, {
    onEachFeature: (feature, layer) => {
      const { Place_Name, City, State = "Unknown State" } = feature.properties;
      layer.bindPopup(`<h4>Historical Site: ${Place_Name}</h4><hr><p>${City}, ${State}</p>`);
    },
    pointToLayer: (feature, latlng) => L.circleMarker(latlng, { radius: 7, color: "white", fillColor: "blue", fillOpacity: 0.4, weight: 1 })
  });

  // Add color ramp legend for Census Heatmap
  const legend = L.control({ position: "bottomright" });
  legend.onAdd = function () {
    const div = L.DomUtil.create("div", "info legend");
    const populationRanges = [0, 1000, 2000, 5000, 10000, 20000, 50000, 100000];
    const colors = ["#FFEDA0", "#FED976", "#FEB24C", "#FD8D3C", "#FC4E2A", "#E31A1C", "#BD0026", "#800026"];
    for (let i = 0; i < populationRanges.length; i++) {
      div.innerHTML += `<i style="background:${colors[i]}"></i> ${populationRanges[i]}${populationRanges[i + 1] ? "&ndash;" + populationRanges[i + 1] + "<br>" : "+"}`;
    }
    return div;
  };
  legend.addTo(myMap);

  // Layer Controls
  const overlayMaps = {
    "Haunted Places": hauntedLayer,
    "Historical Sites": historicalLayer,
    "Heat Map of Haunted Places": heatLayer,
    "Census Heatmap": heatmapLayer
  };

  L.control.layers({ "Base Map": baseLayer }, overlayMaps, { collapsed: false }).addTo(myMap);

  // Add only haunted layer on initial load
  hauntedLayer.addTo(myMap);
}).catch(error => console.log("Failed to load one of the data files:", error));
