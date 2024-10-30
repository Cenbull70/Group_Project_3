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
});

// Define and add the Thunderforest base layer
let baseLayer = L.tileLayer('https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png?apikey=739b4254a9964186a16c957b8b1b52dd', {
  attribution: '© Thunderforest'
}).addTo(myMap);

// Define buffer radii in meters
const radius = 400; // For analysis calculations (1 mile)
const displayRadius = 10000; // For display visualization (10 km)

let selectedCountyLayer; // Track selected county layer for removal

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

// Load haunted places and county boundaries
d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/Haunted_Place_KS.geojson").then(hauntedData => {
  const heatData = hauntedData.features.map(feature => [feature.geometry.coordinates[1], feature.geometry.coordinates[0], 0.5]);
  const heatLayer = L.heatLayer(heatData, { radius: 25, blur: 15, maxZoom: 8 });
  
  const hauntedLayer = L.geoJSON(hauntedData, {
    onEachFeature: (feature, layer) => {
      const { location, city, state, description } = feature.properties;
      const hauntedPopup = `<h4>Haunted Place: ${location}</h4><hr><p>${city}, ${state}</p><p>Incident: ${description}</p>`;
      layer.bindPopup(hauntedPopup);
      
      layer.on("click", () => {
        const hauntedPoint = turf.point(feature.geometry.coordinates);
        const nearbyHospitals = hospitals.filter(hospital => turf.distance(hauntedPoint, turf.point([hospital.longitude, hospital.latitude]), { units: "miles" }) <= 5);
        const nearbyCemeteries = cemeteries.filter(cemetery => turf.distance(hauntedPoint, turf.point([cemetery.longitude, cemetery.latitude]), { units: "miles" }) <= 5);
        updateSidebar(location, nearbyHospitals, nearbyCemeteries);
      });
    },
    pointToLayer: (feature, latlng) => L.circleMarker(latlng, { radius: 8, color: "white", fillColor: "purple", fillOpacity: 0.5, weight: 1 })
  }).addTo(myMap);

  // Create custom pane for county boundaries
  myMap.createPane("countyPane");
  myMap.getPane("countyPane").style.zIndex = 450; // Set a lower z-index for county boundaries

  // Load county boundaries
  d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/kansas-with-county-boundaries_1099.geojson").then(countyData => {
    const countyLayer = L.geoJSON(countyData, {
      style: { color: "gray", weight: 1.5, fillOpacity: 0 },
      pane: "countyPane",
      interactive: false // Prevents the county layer from capturing clicks
    }).addTo(myMap);

    // Populate county dropdown
    const countySelect = document.getElementById("countySelect");
    const countyNames = countyData.features.map(feature => feature.properties.name).sort();
    countyNames.forEach(countyName => {
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
        selectedCountyLayer = L.geoJSON(county, { style: { color: "blue", weight: 2, fillOpacity: 0.2 } }).addTo(myMap);
        myMap.fitBounds(selectedCountyLayer.getBounds());
      }
    });

    // Load historical sites and perform proximity analysis
    d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/KS_historical.geojson").then(historicalData => {
      const historicalLayer = L.geoJSON(historicalData, {
        onEachFeature: (feature, layer) => {
          const { Place_Name, City, State = "Unknown State" } = feature.properties;
          const historicalPopup = `<h4>Historical Site: ${Place_Name}</h4><hr><p>${City}, ${State}</p>`;
          layer.bindPopup(historicalPopup);
        },
        pointToLayer: (feature, latlng) => L.circleMarker(latlng, { radius: 7, color: "white", fillColor: "blue", fillOpacity: 0.4, weight: 1 })
      });

      const bufferLayerGroup = L.layerGroup(); 
      const displayBufferLayerGroup = L.layerGroup();

      const hauntedPlaces = turf.featureCollection(hauntedData.features);
      const historicalSites = turf.featureCollection(historicalData.features);
      let countWithinRadius = 0;

      historicalSites.features.forEach(site => {
        const siteBuffer = turf.buffer(site, radius, { units: 'meters' });
        const bufferLayer = L.geoJSON(siteBuffer, { style: { color: 'white', fillColor: 'gray', weight: 1, fillOpacity: 0.3 }});
        bufferLayerGroup.addLayer(bufferLayer);

        const hauntedWithinBuffer = turf.pointsWithinPolygon(hauntedPlaces, siteBuffer);
        countWithinRadius += hauntedWithinBuffer.features.length;

        const displayBuffer = turf.buffer(site, displayRadius, { units: 'meters' });
        const displayBufferLayer = L.geoJSON(displayBuffer, { style: { color: 'gray', weight: 1, fillOpacity: 0.4 }}).bindPopup(`Display Buffer Radius: ${displayRadius} meters`);
        displayBufferLayerGroup.addLayer(displayBufferLayer);
      });

      const totalHauntedPlaces = hauntedPlaces.features.length;
      const percentageNearHistorical = (countWithinRadius / totalHauntedPlaces) * 100;
      console.log(`Number of haunted places within 1 mile of a historical site: ${countWithinRadius}`);
      console.log(`Percentage of haunted places near historical sites: ${percentageNearHistorical.toFixed(2)}%`);

      const baseMaps = { "Base Map": baseLayer };
      const overlayMaps = {
        "Haunted Places": hauntedLayer,
        // "County Boundaries": countyLayer,
        "Historical Sites": historicalLayer,
        "Heat Map of Haunted Places": heatLayer,
        "Display Only Analysis Buffers": displayBufferLayerGroup
      };
      L.control.layers(baseMaps, overlayMaps, { collapsed: false }).addTo(myMap);
    });
  });
});
