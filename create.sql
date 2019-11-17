CREATE TABLE Accident_Information ( 
id INTEGER NOT NULL, 
accident_index TEXT NOT NULL, 
road_class TEXT NOT NULL, 
accident_severity TEXT NOT NULL,
date TIMESTAMP NOT NULL,
weather_conditions TEXT NOT NULL,
year INTEGER NOT NULL,
in_urban_area TEXT,
primary key (id)
 
); 

COPY Accident_Information FROM 'C:\db\db2_Accident_Information.csv' 
WITH CSV HEADER;

CREATE TABLE Vehicle_Information ( 
id INTEGER NOT NULL, 
accident_index TEXT NOT NULL, 
age_band_of_driver TEXT NOT NULL, 
age_of_vehicle TEXT,
manufacturer TEXT NOT NULL,
model TEXT,
sex_of_driver TEXT NOT NULL,
vehicle_type TEXT NOT NULL,
primary key (id)
 
); 

COPY Vehicle_Information FROM 'C:\db\db2_Vehicle_Information.csv' 
WITH CSV HEADER;