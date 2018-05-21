clear all;

random = zeros(5,1);
roc = load('ROC_random.csv');
for i = 1:2:10
    x = semilogx(roc(i+1, :), roc(i, :), 'color', [0    0.4470    0.7410, 0.5], 'LineWidth', 2);
    hold on
end

a = x;

roc = load('ROC_stoch.csv');
for i = 1:2:10
    x = semilogx(roc(i+1, :), roc(i, :), 'color', [ 0.8500    0.3250    0.0980, 0.5], 'LineWidth', 2);
    hold on
end

b = x;

roc = load('ROC_ddpg.csv');
c = semilogx(roc(2, :), roc(1, :), 'color' ,[ 0.4660    0.6740    0.1880], 'LineWidth', 1.5);
hold on

roc = load('ROC_dql.csv');
d = semilogx(roc(2, :), roc(1, :), 'color', [0.7500         0    0.7500], 'LineWidth', 1.5);

grid on
legend([a, b, c, d], {'Random', 'Stochastic', 'DDPG', 'DQL'})
title('ROC curve')
xlabel('False positives')
ylabel('True positives')