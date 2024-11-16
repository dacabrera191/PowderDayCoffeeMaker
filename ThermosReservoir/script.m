% Constants and Inputs 

density_water = 1000;  % kg/m^3 

totalNumServings; %kg

mass_water = totalNumServings * .000237;  % kg 

initial_temp_water;  % Fahrenheit 

inner_radius;  % radius in meters for inner sphere 

ambient_temp = 78;  % Fahrenheit 

 

% Convert temperatures to Kelvin 

initial_temp_water_K = (initial_temp_water - 32) * 5/9 + 273.15;  % Convert to Kelvin 

ambient_temp_K = (ambient_temp - 32) * 5/9 + 273.15;  % Convert to Kelvin 

 

% Material properties for radiation only 

emissivity = 0.2;  % for stainless steel 

stefan_boltzmann_const = 5.67e-8;  % W/m^2·K^4 

specific_heat_water = 4186;  % J/kg·K 

 

% Time duration 

time_seconds;  % 10 minutes in seconds 

 

% Geometry of the thermos (assuming spherical inner chamber) 

volume_water = mass_water / density_water;  % m^3 



vacuum_thickness;  % m 

outer_radius_vacuum = inner_radius + vacuum_thickness; 

 

% Surface area of the inner sphere 

inner_surface_area = 4 * pi * inner_radius^2; 

 

% Radiation heat loss across the vacuum layer 

radiation_heat_loss = (stefan_boltzmann_const * emissivity * inner_surface_area * (initial_temp_water_K^4 - ambient_temp_K^4) /((1 / emissivity) + (inner_radius^2 / outer_radius_vacuum^2) * ((1 / emissivity) - 1))); 

 

% Total heat loss over the specified time, considering radiation only 

total_heat_loss = radiation_heat_loss * time_seconds; 

 

% Temperature drop of the water inside the thermos 

temp_drop = total_heat_loss / (mass_water * specific_heat_water); 

final_temp_water_K = initial_temp_water_K - temp_drop; 

 

% Convert final temperature back to Fahrenheit 

final_temp_water_F = (final_temp_water_K - 273.15) * 9/5 + 32; 
 