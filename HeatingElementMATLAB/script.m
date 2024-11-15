%
%variable: voltage double input default=80 units=V
%variable: resistance double output units=Ohms
%variable: powerGenerated double output units=Watts
%variable: joulesReleased double output units=Joules/Sec
%variable: finalT double input defualt=200 units=Farenheigt
%variable: initialT double input default=78 units=Farenheigt 
%variable: timeTillDesiredTemp double output units =Seconds
%variable: massOfWaterInThermos double input default=88.72 units = grams
%variable: length double input default=2 units=meters
%variable: crossSection double default=5e-8 units=meters^2

%this model simulates the power and Energy output dissipated from the
%Heating element after power flows through it
StainlessSteelResistivity = 0.00000069;
SpecificHeatCapacity =  4.18;
heatingElementPowerEfficiency = 1; % nearly 100% efficient for turning Electrical Energy into Thermal Energy
resistance = (StainlessSteelResistivity)*(length/crossSection);
powerGenerated =  voltage.^2 / resistance;
joulesReleased = powerGenerated

deltaT = finalT - initialT;

deltaTKelvin = (deltaT - 32) * (5/9) + 273.15;

EnergyNeeded = massOfWaterInThermos * SpecificHeatCapacity * deltaTKelvin;

timeTillDesiredTemp = EnergyNeeded / joulesReleased;
% Energy needed to Heat up an element: Q=mCdeltaT

