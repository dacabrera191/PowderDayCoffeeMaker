%
%variable: length double input default=0.10 units=meters
%variable: TemperatureOfWaterInThermos double input  default=120 units=Farenheit
%variable: PowerOutputOfWallSocket double input default=2100 units=Watts
%variable: CoffeeGroundToWaterMassRatioInCup double input default=
%variable: CoffeeVolumeOutput
%variable: BrewTime
%variable: FinalBrewTemperature
%variable: TemperatureLossFromThermosToCup
%variable: PowerLossFromSocketToHeatingElement
%variable: HeatingElementLength
%variable: HeatingElementCrossSection
%variable: CostOfManufacturing
%variable: CostOfMaterials
%variable: FixedCosts

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