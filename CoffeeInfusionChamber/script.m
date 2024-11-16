% Main script to calculate coffee chamber information based on user input

% Prompt user for the number of cups
num_servings;  

volume_per_cup_m3 = 0.000237;  % Volume of one 8 oz cup in cubic meters
coffee_per_cup_g = 13;          % Mass of coffee grounds per 8 oz cup in grams
density_coffee_grounds = 400;   % Density of coffee grounds in kg/m^3

% Calculate total coffee grounds mass in grams and convert to kg
total_coffee_mass_g = coffee_per_cup_g * num_servings;
total_coffee_mass_kg = total_coffee_mass_g / 1000;  % Convert to kg

% Calculate volume of coffee grounds needed in cubic meters
total_coffee_volume_m3 = total_coffee_mass_kg / density_coffee_grounds;

% Assuming the infusion chamber is a cylindrical shape
height_chamber = 0.1;  % Fixed height of the infusion chamber in meters (10 cm)
radius_chamber = sqrt(total_coffee_volume_m3 / (pi * height_chamber));


