% Kepler's model of Planetary Orbits

%List the inradius and outradius Cube (unit:meter)

Ecube = (2/sqrt(3)) * 1;
RoutCube = sqrt(3)/2 * Ecube;
RinCube = 1/2 * Ecube;

Etetra = RinCube *4 /sqrt(6);
RoutTetra = sqrt(6)/4 * Etetra; 
RinTetra = sqrt(6)/12 * Etetra;

Edode = RinTetra*4 /  (sqrt(15) +sqrt(3));
RoutDode = (sqrt(15) +sqrt(3))/4 * Edode;
RinDode = sqrt(250+110*sqrt(5))/12 * Edode;

Eico = RinDode*4 / sqrt(10+2*sqrt(5));
RoutIco = sqrt(10+2*sqrt(5))/4 *Eico;
RinIco = sqrt(42 + 18*sqrt(5))/12 * Eico;

Eocta = RinIco*2/sqrt(2)
RoutOcta = sqrt(2)/2 * Eocta;
RinOcta = sqrt(6)/12 * Eocta;

%Calculate the circumference of each sphere (centimeter)
Ccube = 2 * pi * RoutCube *100;
Ccube2 = 2 * pi * RinCube*100;
Ctetra = 2 * pi * RinTetra*100;
Cdode = 2 * pi * RinDode*100;
Cico = 2 * pi * RinIco*100;
Cocta = 2 * pi * RinOcta*100;

%Convert radius from meter to cm (centimeter)
RoutCube = RoutCube*100;
RinCube = RinCube*100;
RinTetra = RinTetra*100;
RinDode = RinDode*100;
RinIco = RinIco*100;
RinOcta = RinOcta*100;

clc

fprintf('Sphere        Radius        Circumference\n');
fprintf('  %4.0f %10.3f cm  %16.3f cm\n', 1  , RoutCube, Ccube);
fprintf('  %4.0f %10.3f cm  %16.3f cm\n', 2  , RinCube, Ccube2);
fprintf('  %4.0f %10.3f cm  %16.3f cm\n', 3  , RinTetra, Ctetra);
fprintf('  %4.0f %10.3f cm  %16.3f cm\n', 4  , RinDode, Cdode);
fprintf('  %4.0f %10.3f cm  %16.3f cm\n', 5  , RinIco, Cico);
fprintf('  %4.0f %10.3f cm  %16.3f cm\n', 6  , RinOcta, Cocta);


