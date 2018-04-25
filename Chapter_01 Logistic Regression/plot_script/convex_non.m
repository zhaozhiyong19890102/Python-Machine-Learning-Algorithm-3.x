clear all;
clc;

%% 凸函数
x = (0:0.1:4);
[m,n] = size(x);
y = zeros(m,n);
for i=1:n
    y(m,i) = (x(m,i) - 2)^2 + 2;
end
figure(1)
hold on;
plot(x, y,'color',[0,0,0]);
plot(2,2,'.k');
plot([2 2],[-1 2],'--','color',[0,0,0]);
axis([-0.5 4.5 1.5 6.5]);
hold off;

%% 非凸函数
x1 = (0:0.1:6);
[m,n] = size(x1);
y1 = zeros(m,n);
for i=1:n
    if x1(m,i) < 2.5
        y1(m,i) = (x1(m,i) - 2)^2 + 2;
    end
    if x1(m,i) >= 2.5
        y1(m,i) = (x1(m,i) - 4)^2;
    end
end
figure(2)
hold on;
plot(x1, y1,'color',[0,0,0]);
plot(2,2,'.k');
plot([2 2],[-1 2],'--','color',[0,0,0]);
plot(4,0,'.k');
plot([4 4],[-1 0],'--','color',[0,0,0]);
axis([-0.5 6.5 -0.5 8]);
hold off;