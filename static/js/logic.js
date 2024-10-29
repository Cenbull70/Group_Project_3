// Initialize the map and zoom to Kansas
let myMap = L.map("map", {
  center: [38.54532, -98.13973],
  zoom: 7
});

// Add event listener to the reset button
document.getElementById("resetZoom").addEventListener("click", () => {
  myMap.setView([38.54532, -98.13973], 7); // Reset the view to the initial Kansas zoom and center
});

// Define and add the Thunderforest base layer
const baseLayer = L.tileLayer('https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png?apikey=739b4254a9964186a16c957b8b1b52dd', {
  attribution: '© Thunderforest'
}).addTo(myMap);

// Style for counties (no fill, black outline)
const defaultCountyStyle = {
  color: "black",
  weight: 1,
  fillOpacity: 0
};

// Style for selected counties (black outline only)
const selectedCountyStyle = {
  color: "blue",
  weight: 2,
  fillOpacity: 0
};

// Variable to keep track of the selected county layer to reset it later
let selectedCountyLayer;

// Create a pane for the county layer to set it below other layers
myMap.createPane('countiesPane');
myMap.getPane('countiesPane').style.zIndex = 250; // Below other interactive layers

// Global definitions for layers to make them accessible in layer control
let hauntedLayer, heatLayer, historicalLayer;

// Initialize hospitals and cemeteries as empty arrays in case they fail to load
let hospitals = [];
let cemeteries = [];

// Load hospitals and cemeteries data with adjusted key names
d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/medical.json")
  .then(data => {
    hospitals = data.map(hospital => ({
      name: hospital.name,
      latitude: hospital.lat,
      longitude: hospital.long,
    }));
    console.log("Hospitals loaded:", hospitals);
  })
  .catch(error => {
    console.error("Error loading hospitals data:", error);
    hospitals = []; // Set hospitals to an empty array if loading fails
  });

d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/cemeteries_2013.json")
  .then(data => {
    cemeteries = data.map(cemetery => ({
      name: cemetery.name,
      latitude: cemetery.latitude,
      longitude: cemetery.longitude,
    }));
    console.log("Cemeteries loaded:", cemeteries);
  })
  .catch(error => {
    console.error("Error loading cemeteries data:", error);
    cemeteries = []; // Set cemeteries to an empty array if loading fails
  });

// Fetch Kansas county boundaries GeoJSON
d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/kansas-with-county-boundaries_1099.geojson")
  .then(countyData => {
    if (!countyData || !countyData.features) {
      console.error("Invalid county data format");
      return;
    }

    // Populate dropdown with sorted county names
    const countySelect = document.getElementById("countySelect");
    const countyNames = countyData.features.map(feature => feature.properties.name).sort((a, b) => a.localeCompare(b));
    countyNames.forEach(countyName => {
      const option = document.createElement("option");
      option.value = countyName;
      option.text = countyName;
      countySelect.add(option);
    });

    // Event listener to zoom to selected county from dropdown
    countySelect.addEventListener("change", () => {
      const selectedCounty = countySelect.value;
      const county = countyData.features.find(feature => feature.properties.name === selectedCounty);

      if (county) {
        if (selectedCountyLayer) selectedCountyLayer.setStyle(defaultCountyStyle);
        selectedCountyLayer = L.geoJSON(county, { style: selectedCountyStyle }).addTo(myMap);
        myMap.fitBounds(selectedCountyLayer.getBounds());
      }
    });

    // Display all county boundaries with default style and add click event
    L.geoJSON(countyData, {
      style: defaultCountyStyle,
      pane: 'countiesPane', // Add to the custom pane
      onEachFeature: (feature, layer) => {
        layer.on("click", () => {
          if (selectedCountyLayer) selectedCountyLayer.setStyle(defaultCountyStyle);
          layer.setStyle(selectedCountyStyle);
          selectedCountyLayer = layer;
        });
      }
    }).addTo(myMap);
  })
  .catch(error => console.error("Error loading county boundaries:", error));

// Define buffer radius for nearby locations
const nearbyRadius = 5; // 5 miles

// Fetch GeoJSON data for haunted places
d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/Haunted_Place_KS.geojson")
  .then(data => {
    const heatData = data.features.map(feature => {
      const [longitude, latitude] = feature.geometry.coordinates;
      return [latitude, longitude, 0.5];
    });
    heatLayer = L.heatLayer(heatData, { radius: 25, blur: 15, maxZoom: 8 });

    // Haunted places layer with proximity search
    hauntedLayer = L.geoJSON(data, {
      onEachFeature: (feature, layer) => {
        const location = feature.properties.location;
        const city = feature.properties.city;
        const state = feature.properties.state;
        const description = feature.properties.description;

        const hauntedPopup = `
          <h4>Haunted Place: ${location}</h4>
          <p>${city}, ${state}</p>
          <p>Incident: ${description}</p>
        `;

        layer.bindPopup(hauntedPopup);

        // Click event to find nearby hospitals and cemeteries within 5 miles
        layer.on("click", () => {
          const hauntedPoint = turf.point(feature.geometry.coordinates);

          // Filter nearby hospitals
          const nearbyHospitals = hospitals.filter(hospital => {
            const hospitalPoint = turf.point([hospital.longitude, hospital.latitude]);
            return turf.distance(hauntedPoint, hospitalPoint, { units: "miles" }) <= nearbyRadius;
          });

          // Filter nearby cemeteries
          const nearbyCemeteries = cemeteries.filter(cemetery => {
            const cemeteryPoint = turf.point([cemetery.longitude, cemetery.latitude]);
            return turf.distance(hauntedPoint, cemeteryPoint, { units: "miles" }) <= nearbyRadius;
          });

          // Update sidebar with nearby locations
          updateSidebar(location, nearbyHospitals, nearbyCemeteries);
        });
      },
      pointToLayer: (feature, latlng) => L.circleMarker(latlng, { radius: 8, color: "white", fillColor: "purple", fillOpacity: 0.5, weight: 1 })
    });

    // Add haunted places layer to the map by default
    hauntedLayer.addTo(myMap);

    // Fetch GeoJSON data for historical sites
    return d3.json("https://raw.githubusercontent.com/Cenbull70/Group_Project_3/main/Data/KS_historical.geojson");
  })
  .then(historicalData => {
    // Create the historical sites layer
    historicalLayer = L.geoJSON(historicalData, {
      onEachFeature: (feature, layer) => {
        const Place_Name = feature.properties.Place_Name;
        const City = feature.properties.City;
        const State = feature.properties.State || "Unknown State";

        const historicalPopup = `
          <h4>Historical Site: ${Place_Name}</h4>
          <hr>
          <p>${City}, ${State}</p>
        `;
        layer.bindPopup(historicalPopup);
      },
      pointToLayer: (feature, latlng) => L.circleMarker(latlng, { radius: 7, color: "white", fillColor: "blue", fillOpacity: 0.4, weight: 1 })
    });

    // Add layer control with only haunted places initially shown
    const overlayMaps = {
      "Haunted Places": hauntedLayer,
      "Historical Sites": historicalLayer,
      "Heat Map of Haunted Places": heatLayer
    };

    // Add layer control to the map
    L.control.layers({ "Base Map": baseLayer }, overlayMaps, { collapsed: false }).addTo(myMap);
  })
  .catch(error => console.error("Error loading haunted places or historical data:", error));

// Function to update the sidebar with nearby hospitals and cemeteries
function updateSidebar(hauntedLocation, nearbyHospitals, nearbyCemeteries) {
  const locationInfo = document.getElementById("locationInfo");
  locationInfo.innerHTML = `<h3>${hauntedLocation}</h3>`;

  if (nearbyHospitals.length > 0) {
    locationInfo.innerHTML += `<h4>Hospitals within 5 miles:</h4><ul>`;
    nearbyHospitals.forEach(hospital => {
      locationInfo.innerHTML += `<li>${hospital.name || "Unnamed Hospital"}</li>`;
    });
    locationInfo.innerHTML += `</ul>`;
  } else {
    locationInfo.innerHTML += `<p>No hospitals within 5 miles.</p>`;
  }

  if (nearbyCemeteries.length > 0) {
    locationInfo.innerHTML += `<h4>Cemeteries within 5 miles:</h4><ul>`;
    nearbyCemeteries.forEach(cemetery => {
      locationInfo.innerHTML += `<li>${cemetery.name || "Unnamed Cemetery"}</li>`;
    });
    locationInfo.innerHTML += `</ul>`;
  } else {
    locationInfo.innerHTML += `<p>No cemeteries within 5 miles.</p>`;
  }
}
