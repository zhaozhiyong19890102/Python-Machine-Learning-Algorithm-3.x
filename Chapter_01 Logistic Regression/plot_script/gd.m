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
    g(i,1) = g(i-1,1) - 0.25 * 2 * (g(i-1,1) - 2);
    g(i,2) = (g(i,1)-2)^2 + 2;
    if g(i,2) == 2
        break
    end
end
hold on;
plot(x, y,'color',[0,0,0]);
for i =1:100
    if g(i,1) ~= 0
        plot(g(i,1),g(i,2),'.k');
        plot([g(i,1) g(i,1)],[0 g(i,2)],'--','color',[0,0,0]);
    end
end

axis([-0.5 4.5 1.5 6.5]);
hold off;