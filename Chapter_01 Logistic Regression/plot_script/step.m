clear all;
clc;

%% 梯度下降
x = (0:0.1:4);
[m,n] = size(x);
y = zeros(m,n);
for i=1:n
    y(m,i) = (x(m,i) - 2)^2 + 2;
end
g = zeros(100,2);
g(1,1) = 4;
g(1,2) = (g(1,1)-2)^2 + 2;
for i =2:100
    % step small
    %g(i,1) = g(i-1,1) - 0.05 * (g(i-1,1) - 2);
    % step ok
    g(i,1) = g(i-1,1) - 0.5 * (g(i-1,1) - 2);
    % step big
    %g(i,1) = g(i-1,1) - 1.8 * (g(i-1,1) - 2);
    g(i,2) = (g(i,1)-2)^2 + 2;
    if g(i,2) == 2
        break
    end
end
hold on;
plot(x, y,'color',[0,0,0]);
a = g(1,1);
b = g(1,2);
for i =2:100
    if g(i,1) ~= 0
        a = [a g(i, 1)];
        % 当step为big时，注释下面的b和a
        b = [b g(i-1, 2)];
        a = [a g(i, 1)];
        b = [b g(i,2)];
        plot(g(i,1),g(i,2),'.k');
    end
end
plot(a(1,:), b(1,:), 'color',[0,0,0]);
plot(2,2,'.k');
plot([2 2],[0 2],'--','color',[0,0,0]);

axis([-0.5 4.5 1.5 6.5]);
hold off;