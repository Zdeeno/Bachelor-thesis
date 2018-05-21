clear all;
[X,Y] = meshgrid(0:0.001:1);
azalpha = 1.5;
azbeta = 1.5;
elalpha = 4.2;
elbeta = 3;

x = betapdf(X, azbeta, azalpha);
y = betapdf(X, elbeta, elalpha);
z = (x + y')/2;

fov = [pi*(2/3), pi/2];

X = X*fov(1) - fov(1)/2;
Y = Y*fov(2) - fov(2)/2;
surf(X, Y, z/(fov(1)*fov(2)), 'EdgeColor', 'None')
daspect([1 1 1])
xlabel('azimuth [rad]')
ylabel('elevation [rad]')
zlabel('probability density')
title('Probability density over FOV')
hcb = colorbar;
colorTitleHandle = get(hcb, 'Title');
titleString = 'probability density';
set(colorTitleHandle ,'String', titleString);
xticks([-1:0.25:1])
xlim([-1.05, 1.05])
yticks(-0.8:0.1:0.8)
ylim([-0.786, 0.786])