%% 
X = [-60 -60 -60 -60 -57 -57 -57 -57 57 57 57 57 60 60 60];
Y = [45 42 39 -45 -39 45 -45 -42 45 42 -45 -39 45 -45 -42];
signX = X./abs(X);
signY = Y./abs(Y);
X = X - signX*1.5;
Y = Y - signY*1.5;
scatter(X,Y,100, 'filled', 's', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'b')
grid on
hold on
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
xlabel('azimuth[°]')
ylabel('elevation[°]')
legend('ray directions')
axis([[-60 60], [-45 45]])
title('Action example with gaussian noise')

%%
X = [-12 -21 24 -3 -18 -33 -51 -42 39 12 27 57 0 21 6];
Y = [-15 21 -3 -12 42 -33 -27 12 -45 -18 21 -9 3 15 24];
signX = X./abs(X);
signY = Y./abs(Y);
X = X - signX*1.5;
Y = Y - signY*1.5;
scatter(X,Y,100, 'filled', 's', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'b')
grid on
hold on
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
xlabel('azimuth[°]')
ylabel('elevation[°]')
legend('ray directions')
axis([[-60 60], [-45 45]])
title('Action example with OU-noise')