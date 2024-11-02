% Main script to model a coffee maker and display its information

% Parameters for the coffee maker
thermos_radius;  % 10 cm radius for the thermos
num_cups;          % Desired number of cups (8 oz each)
infusion_chamber_height;  % Fixed height of the infusion chamber in meters (10 cm)

% Function definition for model_coffee_maker
% Constants
volume_per_cup_m3 = 0.000237;  % Volume of one 8 oz cup in cubic meters
density_water = 1000;           % kg/m^3 for water
thermos_height_factor = 2.5;    % Assume thermos height is 2.5 times the radius


% Thermos dimensions
thermos_height = thermos_radius * thermos_height_factor;  % Height of thermos
thermos_volume = pi * thermos_radius^2 * thermos_height;  % Volume of thermos in m^3

% Coffee infusion chamber dimensions
infusion_chamber_volume = pi * thermos_radius^2 * infusion_chamber_height;

% Cup dimensions based on number of cups (8 oz per cup)
cup_volume = num_cups * volume_per_cup_m3;  % in cubic meters
cup_radius = 0.04;  % Assume average cup radius of 8 cm (0.04 m)
cup_height = cup_volume / (pi * cup_radius^2);  % Height of cup

% Total height of coffee maker to accommodate thermos, infusion chamber, and cup
total_height = thermos_height + infusion_chamber_height + cup_height;

% Footprint area and total volume of coffee maker
footprint_area = pi * thermos_radius^2;
coffee_maker_volume = footprint_area * total_height;  % Total volume in cubic meters

