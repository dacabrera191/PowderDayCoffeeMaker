% Main script to calculate inner radius based on user input

% Prompt user for the number of cups
num_cups = 3;

% Call the function to calculate the inner radius
inner_radius = calculate_inner_radius(num_cups);

% Display the result
fprintf('Inner radius for %d cups: %.4f meters\n', num_cups, inner_radius);

% Function definition for calculate_inner_radius
function inner_radius = calculate_inner_radius(num_cups)
    % Constants
    volume_per_cup_m3 = 0.000237;  % volume of one cup in cubic meters

    % Total volume based on number of cups
    total_volume = num_cups * volume_per_cup_m3;

    % Calculate inner radius based on total volume
    inner_radius = (3 * total_volume / (4 * pi))^(1/3);
end