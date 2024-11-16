%
%variable: voltage double input default=80 units=V
%variable: resistance double output units=Ohms
%variable: powerGenerated double output units=Watts
%variable: joulesReleased double output units=Joules/Sec
%variable: finalT double input defualt=200 units=Farenheigt
%variable: initialT double input default=78 units=Farenheigt 
%variable: massOfWaterInThermos double input default=88.72 units = grams
%variable: length double input default=2 units=meters
%variable: crossSection double input default=5e-8 units=meters^2
%variable: MassOfWater double input default= 
%this model simulates the power and Energy output dissipated from the
%Heating element after power flows through it

StainlessSteelResistivity = 0.00000069;
SpecificHeatCapacity =  4.18; % J/gram
% nearly 100% efficient for turning Electrical Energy into Thermal Energy
heatingElementPowerEfficiency = 1; 

lengthCm = length * 100;
crossSectionCm = crossSection *100;

massOfWaterg = 29.57 * numServings;
massOfWaterKg = ((29.57 * numServings)/1000);



resistance = (StainlessSteelResistivity)*(length/crossSection);
powerGenerated =  voltage.^2 / resistance;
joulesReleased = powerGenerated

deltaT = finalT - initialT;

deltaTKelvin = (deltaT - 32) * (5/9) + 273.15;

% Energy needed to Heat up an element: Q=mCdeltaT
EnergyNeeded = massOfWaterg * SpecificHeatCapacity * deltaTKelvin;

timeTillDesiredTempInSec = EnergyNeeded / joulesReleased;
timeTillDesiredTempInMins = timeTillDesiredTempInSec / 60;




