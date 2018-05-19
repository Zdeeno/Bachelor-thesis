clear all;
[X,Y] = meshgrid(0:0.01:1);
azalpha = 2;
azbeta = 4;
elalpha = 4;
elbeta = 8;

x = betapdf(X, azalpha, azbeta);
y = betapdf(X, elalpha, elbeta);
z = (x + y')/2;

surf(X, Y, z)