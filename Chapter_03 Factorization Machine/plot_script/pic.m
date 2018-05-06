clear all;
clc;

%% 原始图

A = load('train_data.txt');

x = (-0.1:0.01:10.1);
[m,n] = size(x);
y = zeros(m,n);

for i=1:n
    y(m,i) = -(2 + 3 * x(m,i)) / (10 + 7 * x(m,i));
end

figure(1);
hold on;
%plot(x,y,'--', 'color',[0,0,0]);
plot(A(1:100,1), A(1:100,2), '.', 'color',[0,0,0]);
plot(A(101:200,1), A(101:200,2), 'o', 'color',[0,0,0], 'MarkerSize',4);
axis([-1 11 -0.42 -0.18]);
hold off;
%% 最终的图

x1 = (0:0.01:10);
[m,n] = size(x1);
x2 = zeros(m,n);

for i=1:n
    x2(m,i) = -(5.50536036963 + 20.0978165929 * x1(m,i)) / (32.6366710769 + 49.1511 * x1(m,i));
end
figure(2);
hold on;
plot(x1, x2, 'color',[0,0,0]);
plot(A(1:100,1), A(1:100,2), '.', 'color',[0,0,0]);
plot(A(101:200,1), A(101:200,2), 'o', 'color',[0,0,0], 'MarkerSize',4);
axis([-1 11 -0.42 -0.18]); 
hold off;