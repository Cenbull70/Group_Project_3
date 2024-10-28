// Initialize the map and zoom to Kansas
let myMap = L.map("map", {
  center: [38.54532, -98.13973],
  zoom: 7
});

// Define and add the Thunderforest base layer
const baseLayer = L.tileLayer('https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png?apikey=739b4254a9964186a16c957b8b1b52dd', {
  attribution: '© Thunderforest'
}).addTo(myMap);

// Define actual analysis buffer radius in meters
const radius = 400;       // For actual calculations (1 mile)
const displayRadius = 10000; // For visualization only

// Fetch GeoJSON data for haunted places
d3.json("https://raw.githubusercontent.com/asianpenguin701/Data/main/Haunted_Place_KS.geojson")
  .then(data => {
    // Create an array for heat map coordinates
    const heatData = data.features.map(feature => {
      const [longitude, latitude] = feature.geometry.coordinates;
      return [latitude, longitude, 0.5];
    });

    // Create the heat map layer for haunted places
    const heatLayer = L.heatLayer(heatData, {
      radius: 25,
      blur: 15,
      maxZoom: 8
    });

    // Create the marker layer with purple markers for haunted places
    const hauntedLayer = L.geoJSON(data, {
      onEachFeature: function (feature, layer) {
        const location = feature.properties.location;
        const city = feature.properties.city;
        const state = feature.properties.state;
        const description = feature.properties.description;

        const hauntedmap = `
          <h4>Haunted Place: ${location}</h4>
          <hr>
          <p>${city}, ${state}</p>
          <p>Incident: ${description}</p>
        `;
        
        layer.bindPopup(hauntedmap);
      },
      pointToLayer: function (feature, latlng) {
        return L.circleMarker(latlng, { 
          radius: 8,
          color: "white",
          fillColor: "purple",  
          fillOpacity: 0.5,
          weight: 1
        });
      }
    });

    // Fetch GeoJSON data for historical sites
    d3.json("https://raw.githubusercontent.com/asianpenguin701/Data/main/KS_historical.geojson")
      .then(historicalData => {
        const historicalLayer = L.geoJSON(historicalData, {
          onEachFeature: function (feature, layer) {
            const Place_Name = feature.properties.Place_Name;
            const City = feature.properties.City;
            const State = feature.properties.State || "Unknown State";

            const historicalpopup = `
              <h4>Historical Site: ${Place_Name}</h4>
              <hr>
              <p>${City}, ${State}</p>
            `;
            layer.bindPopup(historicalpopup);
          },
          pointToLayer: function (feature, latlng) {
            return L.circleMarker(latlng, { 
              radius: 7,  
              color: "white",  
              fillColor: "blue",  
              fillOpacity: 0.4,  
              weight: 1
            });
          }
        });

        // Create layer groups to hold buffer layers
        const bufferLayerGroup = L.layerGroup();         // Analysis radius buffers
        const displayBufferLayerGroup = L.layerGroup();  // Display radius buffers

        // Perform proximity analysis using Turf.js
        const hauntedPlaces = turf.featureCollection(data.features);
        const historicalSites = turf.featureCollection(historicalData.features);

        let countWithinRadius = 0;

        // For each historical site, create an analysis buffer and a display-only buffer
        historicalSites.features.forEach(site => {
          // Analysis buffer (for calculations)
          const siteBuffer = turf.buffer(site, radius, { units: 'meters' });
          const bufferLayer = L.geoJSON(siteBuffer, { 
            style: { color: 'white', fillColor: 'gray', weight: 1, fillOpacity: 0.3 }
          });
          bufferLayerGroup.addLayer(bufferLayer);

          // Find haunted places within the analysis buffer
          const hauntedWithinBuffer = turf.pointsWithinPolygon(hauntedPlaces, siteBuffer);
          countWithinRadius += hauntedWithinBuffer.features.length;

          // Display-only buffer (for visualization)
          const displayBuffer = turf.buffer(site, displayRadius, { units: 'meters' });
          const displayBufferLayer = L.geoJSON(displayBuffer, { 
            style: { color: 'gray', weight: 1, dashArray: '5,5', fillOpacity: 0.4 }
          }).bindPopup(`Display Buffer Radius: ${displayRadius} meters`);
          displayBufferLayerGroup.addLayer(displayBufferLayer);
        });

        // Calculate percentage of haunted places near historical sites
        const totalHauntedPlaces = hauntedPlaces.features.length;
        const percentageNearHistorical = (countWithinRadius / totalHauntedPlaces) * 100;

        console.log(`Number of haunted places within 1/4 mile of a historical site: ${countWithinRadius}`);  // A 1/4 mile was chosen because it is generally considered a walkable distance.
        console.log(`Percentage of haunted places near historical sites: ${percentageNearHistorical.toFixed(2)}%`);

        // Add Layer Control for layers
        const baseMaps = {
          "Base Map": baseLayer
        };

        const overlayMaps = {
          "Haunted Places": hauntedLayer,
          "Historical Sites": historicalLayer,
          "Heat Map of Haunted Places": heatLayer,
          "Display-Only Historical Sites Buffer Zones": displayBufferLayerGroup
        };

        // Add layer control to the map
        L.control.layers(baseMaps, overlayMaps, { collapsed: false }).addTo(myMap);

        // // Add the haunted places to the map by default
        // heatLayer.addTo(myMap);


      
      });
  });
