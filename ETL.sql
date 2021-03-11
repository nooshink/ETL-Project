-- Create tables for raw data to be loaded into
CREATE TABLE Countries (
	cont_id INT PRIMARY KEY,
	countryname TEXT,
	population int,
	GDP float,
	hospital_death float,
	life_expectancy float,
	Human_development float	
);


CREATE TABLE Covid_data (
	cont_id INTEGER NOT NULL,
	FOREIGN KEY (cont_id) REFERENCES Countries(cont_id),
	total_cases int,
	total_recovery int,
	active_cases_today int
)