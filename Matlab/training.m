clear all;
close all;
y = load('log');
x = 0:25:(length(y)-1)*25;
y = y;
y2 = [-247.75, -247.75];
x2 = [0, (length(y)-1)*26.6]

plot(x,y', 'LineWidth', 1)
hold on
plot(x2, y2, 'color', [ 0.8500 0.3250 0.0980 0.5], 'LineWidth', 2.5)
title('Training progress')
xlabel('Episode')
ylabel('Reward on evaluation map')
legend('Stochastic planner', 'Random planner')
grid on
