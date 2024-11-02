% Main script to calculate coffee chamber information based on user input

% Prompt user for the number of cups
num_cups = 4;  

% Call the function to calculate coffee chamber information
coffee_chamber_info = calculate_coffee_chamber(num_cups);

% Display the results
fprintf('Total coffee mass for %d cups: %.2f g\n', num_cups, coffee_chamber_info.total_coffee_mass_g);
fprintf('Total coffee volume for %d cups: %.6f m^3\n', num_cups, coffee_chamber_info.total_coffee_volume_m3);
fprintf('Infusion chamber radius: %.4f m\n', coffee_chamber_info.chamber_radius_m);
fprintf('Infusion chamber height: %.1f m\n', coffee_chamber_info.chamber_height_m);

% Function definition for calculate_coffee_chamber
function coffee_chamber_info = calculate_coffee_chamber(num_cups)
    % Constants
    volume_per_cup_m3 = 0.000237;  % Volume of one 8 oz cup in cubic meters
    coffee_per_cup_g = 13;          % Mass of coffee grounds per 8 oz cup in grams
    density_coffee_grounds = 400;   % Density of coffee grounds in kg/m^3

    % Calculate total coffee grounds mass in grams and convert to kg
    total_coffee_mass_g = coffee_per_cup_g * num_cups;
    total_coffee_mass_kg = total_coffee_mass_g / 1000;  % Convert to kg

    % Calculate volume of coffee grounds needed in cubic meters
    total_coffee_volume_m3 = total_coffee_mass_kg / density_coffee_grounds;

    % Assuming the infusion chamber is a cylindrical shape
    height_chamber = 0.1;  % Fixed height of the infusion chamber in meters (10 cm)
    radius_chamber = sqrt(total_coffee_volume_m3 / (pi * height_chamber));

    % Output results in a struct for clarity
    coffee_chamber_info = struct(...
        'total_coffee_mass_g', total_coffee_mass_g, ...
        'total_coffee_volume_m3', total_coffee_volume_m3, ...
        'chamber_radius_m', radius_chamber, ...
        'chamber_height_m', height_chamber);
end

