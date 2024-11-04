# Lost Souls: Mapping the Haunted Connections
## Project Overview
Lost Souls is an interactive web application designed to map haunted locations in Kansas and analyze their proximity to historical sites, hospitals, and cemeteries. This project integrates various spatial analysis techniques to reveal correlations and provide insight into the haunted landscape of Kansas.

## Project Structure
```bash
project-directory/
|-- Data/
|   |-- CSV/
|   |   |-- Battlefield_API_results/
|   |   |-- Historical_Sites_API_results/
|   |   |-- cemeteries_2013.csv
|   |   |-- county_pts.csv
|   |   |-- Haunted_Place_KS.csv
|   |   |-- KS_battlefields.csv
|   |   |-- KS_Historical.csv
|   |   |-- KS_Historical_utf8.csv
|   |   |-- Medical.csv
|   |   |-- merged_battlefields_historical.csv
|   |   |-- us_census_data_2024.csv
|   |-- ERD_ERB/
|       |-- Project3_ERD.png
|       |-- Project3_Database.sql
|       |-- Project3_schema.sql
|   |-- cemetery.geojson
|   |-- cemetery.json
|   |-- haunted_places.geojson
|   |-- historical_sites.geojson
|   |-- hospitals.json
|   |-- kansas-with-county-boundaries_1099.geojson
|   |-- medical.geojson
|   |-- us_census_data_2024.json
|-- static/
|   |-- css/
|   |   |-- style.css
|   |-- js/
|       |-- logic.js
|-- .gitignore
|-- API_geojson.ipynb
|-- index.html
|-- Project3_Presentation.pptx
|-- README.md
```


## Key Features
- Interactive Map: Explore haunted places, historical sites, and other points of interest on an intuitive and interactive map.
- Heatmaps: Visualize the concentration of haunted locations across Kansas.
- County Census Data: View the population distribution across different counties using a color-coded census heatmap.
- Nearby Places Analysis: Click on haunted locations to display nearby hospitals and cemeteries within a 5-mile radius.
- Custom Layers: Toggle between haunted places, historical sites, census data, and analysis buffers for an in-depth view.
- Responsive Sidebar: Access summarized information and detailed analyses through dynamically updated side panels.

## Data Processing Scripts
This repository includes Python scripts for processing and analyzing geospatial data related to battlefields, historical sites, cemeteries, haunted places, and medical facilities in Kansas. The scripts facilitate data collection from APIs, data merging, conversion to GeoJSON format, and database interactions for visualization and analysis.

### Key Features
- Automated Data Collection: Python scripts fetch location data from the Google Maps API and save it as CSV files.
- Data Merging: Merges multiple datasets to create unified records of historical sites and battlefields.
- GeoJSON Conversion: Converts CSV data to GeoJSON format for use in mapping and analysis.
- Database Integration: Connects to PostgreSQL databases using SQLAlchemy to execute queries and retrieve data for further processing.


## Technologies Used
- HTML5 & CSS3: Structuring and styling the application.
- JavaScript: Core logic and interactivity.
- Leaflet.js: Mapping and geographic data visualization.
- Turf.js: Spatial analysis and geometric operations.
- D3.js: Data handling and external data fetching.
- GeoJSON: Representing and managing geographic data.

## File Structure
- index.html: The main HTML file containing the layout, embedded styles, and map container structure.
- logic.js: JavaScript file containing map initialization, data loading, event handling, and spatial analysis logic.

## How It Works
- Map Initialization: The map centers on Kansas and uses the Thunderforest base layer for clear visualization.
- Data Layers: Layers include haunted places, historical sites, and a census heatmap. A heatmap and analysis buffers are also included for deeper insights.
- Interactivity: The application allows users to click on haunted locations to reveal nearby hospitals and cemeteries.
- Dynamic Sidebar: Updates with detailed information based on user interaction.

## Data Sources
- Haunted Places: [GeoJSON source for haunted locations]
- Hospitals & Cemeteries: Data sourced from public health databases and spatial datasets.
- Historical Sites: [GeoJSON source for historical data]
- Census Data: [US Census data for population]

## Instructions for Use
Clone the repository:
``git clone https://github.com/Cenbull70/Group_Project_3.git``

Navigate to the project directory:
``cd Group_Project_3``

Open index.html in a web browser to start the application.



## Ethical Considerations
Ethical Considerations: This project takes care to handle data related to sensitive topics, such as haunted locations and population demographics, respectfully. All data sources are publicly available and vetted to avoid misinformation. The project does not intend to perpetuate myths or sensationalize stories but aims to present the data as a cultural and historical study tool. Users are advised to interpret the data responsibly and not use it for commercial or exploitative purposes.

## Contributors
Jared Pavlik

Peiwen Chiu

Richard Wallace
