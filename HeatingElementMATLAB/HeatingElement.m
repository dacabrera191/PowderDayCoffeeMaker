%
%variable: voltage double input default=80 units=V
%variable: resistance double input default=0.354 units=Ohms
%variable: powerGenerated double output units=Watts
%variable: powerDissipated double output units=Watts
%variable: joulesReleased double output units=Joules/Sec
%variable: finalT double input defualt = 200 units = Farenheight
%variable: initialT double input default = 78 units = Farenheight 
%variable: timeTillDesiredTemp double output units =Seconds
%variable: massOfWaterInThermos double input default=88.72 units = grams

%this model simulates the power and Energy output dissipated from the
%Heating element after power flows through it
  
SpecificHeatCapacity =  4.18;
heatingElementPowerEfficiency = 1; % nearly 100% efficient for turning Electrical Energy into Thermal Energy
powerGenerated =  voltage^2 * resistance;


deltaT = finalT - initialT;

deltaTKelvin = (deltaT - 32) * (5/9) + 273.15;

EnergyNeeded = massOfWaterWithinThermos * SpecificHeatCapacity * deltaTKelvin;

timeTillDesiredTemp = EnergyNeeded / powerGenerated;
% Energy needed to Heat up an element: Q=mCdeltaT

