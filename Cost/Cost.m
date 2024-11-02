% Main script to estimate the cost of a coffee maker and display the breakdown

% Parameters for the coffee maker
thermos_radius = 0.1;  % 10 cm radius
thermos_thickness = 0.001;  % 1 mm thickness of the thermos
infusion_chamber_radius = 0.05;  % 5 cm radius for infusion chamber
infusion_chamber_height = 0.1;  % 10 cm height
heating_element_length = 0.5;  % 50 cm length
heating_element_cross = 0.0005;  % 0.5 cm cross-sectional radius (corrected to be in meters)

% Call the function to estimate coffee maker cost
cost_breakdown = estimate_coffee_maker_cost(thermos_radius, thermos_thickness, infusion_chamber_radius, infusion_chamber_height, heating_element_length, heating_element_cross);

% Display results
fprintf('Heating Element Cost: $%.2f\n', cost_breakdown.heating_element_cost);
fprintf('Thermos Cost: $%.2f\n', cost_breakdown.thermos_cost);
fprintf('Infusion Chamber Cost: $%.2f\n', cost_breakdown.infusion_chamber_cost);
fprintf('Base Cost: $%.2f\n', cost_breakdown.base_cost);
fprintf('Total Material Cost: $%.2f\n', cost_breakdown.material_cost);
fprintf('Manufacturing Cost: $%.2f\n', cost_breakdown.manufacturing_cost);
fprintf('Total Cost of Coffee Maker: $%.2f\n', cost_breakdown.total_cost);

% Function definition for estimate_coffee_maker_cost
function cost_breakdown = estimate_coffee_maker_cost(thermos_radius, thermos_thickness, infusion_chamber_radius, infusion_chamber_height, heating_element_length, heating_element_cross)
    % Material properties and costs per kg
    cost_per_kg_stainless_steel = 5;  % USD/kg for stainless steel (heating element, thermos, infusion chamber)
    cost_per_kg_plastic = 3;  % USD/kg for plastic (base/structure)

    % Densities in kg/m^3
    density_stainless_steel = 8000;  % Stainless steel
    density_plastic = 950;  % Plastic for the structure

    % Manufacturing cost percentage
    manufacturing_markup = 0.3;  % 30% of the material cost

    % 1. Heating Element Cost (Stainless steel wire)
    heating_element_volume = pi * (heating_element_cross^2) * heating_element_length;  % Volume of heating element
    heating_element_mass = heating_element_volume * density_stainless_steel;  % Mass of heating element
    heating_element_cost = heating_element_mass * cost_per_kg_stainless_steel;  % Cost of heating element

    % 2. Thermos Water Reservoir Cost (Hollow spherical structure)
    outer_radius = thermos_radius;  % Outer radius of thermos
    inner_radius = outer_radius - thermos_thickness;  % Inner radius of thermos

    volume_outer_sphere = (4/3) * pi * outer_radius^3;  % Volume of outer sphere
    volume_inner_sphere = (4/3) * pi * inner_radius^3;  % Volume of inner sphere
    thermos_volume = volume_outer_sphere - volume_inner_sphere;  % Volume of the stainless steel shell
    thermos_mass = thermos_volume * density_stainless_steel;  % Mass of thermos
    thermos_cost = thermos_mass * cost_per_kg_stainless_steel;  % Cost of thermos

    % 3. Coffee Infusion Chamber Cost (Hollow cylinder)
    infusion_chamber_outer_radius = infusion_chamber_radius;  % Outer radius
    infusion_chamber_inner_radius = infusion_chamber_radius - thermos_thickness;  % Inner radius
    infusion_chamber_volume = pi * infusion_chamber_height * (infusion_chamber_outer_radius^2 - infusion_chamber_inner_radius^2);  % Volume of hollow cylinder
    infusion_chamber_mass = infusion_chamber_volume * density_stainless_steel;  % Mass of infusion chamber
    infusion_chamber_cost = infusion_chamber_mass * cost_per_kg_stainless_steel;  % Cost of infusion chamber

    % 4. Footprint/Structure Cost (Plastic base)
    base_thickness = 0.005;  % 5 mm plastic base thickness
    base_radius = thermos_radius + 0.02;  % Slightly larger than thermos radius for stability
    base_area = pi * base_radius^2;  % Base footprint area
    base_volume = base_area * base_thickness;  % Volume of plastic base
    base_mass = base_volume * density_plastic;  % Mass of base
    base_cost = base_mass * cost_per_kg_plastic;  % Cost of base

    % Total material cost
    total_material_cost = heating_element_cost + thermos_cost + infusion_chamber_cost + base_cost;

    % Manufacturing cost (30% markup on material cost)
    manufacturing_cost = total_material_cost * manufacturing_markup;

    % Total cost
    total_cost = total_material_cost + manufacturing_cost;

    % Output cost breakdown in a struct
    cost_breakdown = struct(...
        'heating_element_cost', heating_element_cost, ...
        'thermos_cost', thermos_cost, ...
        'infusion_chamber_cost', infusion_chamber_cost, ...
        'base_cost', base_cost, ...
        'material_cost', total_material_cost, ...
        'manufacturing_cost', manufacturing_cost, ...
        'total_cost', total_cost);
end

