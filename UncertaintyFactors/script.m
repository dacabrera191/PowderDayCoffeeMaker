%
%variable: TemperatureOfWaterInThermos double input  default=120 units=Farenheit
%variable: PowerOutputOfWallSocket double input default=2100 units=Watts
%variable: CoffeeGroundToWaterMassRatioInCup double input default=0 
%variable: CoffeeVolumeOutput double input default=0 units=CubicMeters
%variable: BrewTime double input default=0 units=Seconds
%variable: FinalBrewTemperature double input default=0 units=Farenheit
%variable: TemperatureLossFromThermosToCup double input default=0 units=Farenheit
%variable: PowerLossFromSocketToHeatingElement double input default=200 units=Watts
%variable: HeatingElementLength double input default=0.05
%variable: HeatingElementCrossSection double input defualt=0.00025 units=Meters
%variable: CostOfManufacturing double input defualt=10
%variable: CostOfMaterials double input defualt=3
%variable: FixedCosts double input defualt=0

TemperatureOfWaterInThermos;
%
PowerOutputOfWallSocket;
%
CoffeeGroundToWaterMassRatioInCup;
%
CoffeeVolumeOutput;
%
BrewTime;
%
FinalBrewTemperature;
%
TemperatureLossFromThermosToCup;
%
PowerLossFromSocketToHeatingElement;
%
HeatingElementLength;
%
HeatingElementCrossSection;
%
CostofManufacturing;
%
CostOfMaterials;
%
FixedCosts = ACtoDCConverter +uController + buttons;