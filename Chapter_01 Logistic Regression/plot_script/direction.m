clear all;
clc;

%% 梯度下降
x = (0:0.1:4);
[m,n] = size(x);
y = zeros(m,n);
for i=1:n
    y(m,i) = (x(m,i) - 2)^2 + 2;
end
hold on;
plot(x, y);
plot(3.5,4.25,'.k');
plot([3.5 3.5],[0 4.25],'r--');
plot(2,2,'.k');
plot([2 2],[0 2],'r--');
% plot(0.5,4.25,'.k');
% plot([0.5 0.5],[0 4.25],'r--');
x1 = [3, 4];
y1 = [2.75, 5.75];
plot(x1,y1);
x2 = [1, 3];
y2 = [2, 2];
plot(x2,y2);
x3 = [0, 1];
y3 = [5.75, 2.75];
%plot(x3, y3);

axis([-0.5 4.5 1.5 6.5]);
hold off;