clear all;

roc = load('ROC.csv');
for i = 1:2:10
    semilogx(roc(i+1, :), roc(i, :), 'b')
    hold on
end