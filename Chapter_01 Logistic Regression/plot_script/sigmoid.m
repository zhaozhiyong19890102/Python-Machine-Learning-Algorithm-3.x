clear all;
clc;
%% sigmoid
x = (-10:0.01:10);
y = zeros(1,2001);
for i = 1:2001
    y(1, i) = 1 / (1 + exp (-x(1, i)));
end

plot(x, y, 'color',[0,0,0]);
axis([-10 10 -0.1 1.1]);