clear all;
clc;

%% 非线性可分
A = zeros(200, 3);
for i = 1:100
    A(i,1) = rand() * 10;
    A(i,2) = rand() * (2-sin(A(i,1))) + sin(A(i,1)) + 0.5;
    A(i,3) = 0;
end

for j = 101:200
    A(j,1) = rand() * 10;
    A(j,2) = rand() * (2+sin(A(j,1))) - 2 - 0.5;
    A(j,3) = 1;
end

x = (0:0.01:10);
y = sin(x);

figure(1)
hold on;
plot(A(1:100,1), A(1:100,2), '.', 'color',[0,0,0]);
plot(A(101:200,1), A(101:200,2), 'o', 'color',[0,0,0], 'MarkerSize',4);
plot(x, y, 'color',[0,0,0]);
axis([-2 12 -3 3]); 
hold off;

%% 线性可分

A1 = zeros(200, 3);
for i = 1:100
    A1(i,1) = rand() * 9;
    A1(i,2) = rand() * (9 - A1(i,1)) + A1(i,1) + 1;
    A1(i,3) = 0;
end

for j = 101:200
    A1(j,1) = rand() * 9 + 1;
    A1(j,2) = rand() * (A1(j,1) - 1);
    A1(j,3) = 1;
end
x1 = (0:0.01:10);
y1 = x1;

figure(2)
hold on;
plot(A1(1:100,1), A1(1:100,2), 'o', 'color',[0,0,0], 'MarkerSize',4);
plot(A1(101:200,1), A1(101:200,2),'.', 'color',[0,0,0]);
plot(x1,y1,'color',[0,0,0]);
axis([-1 11 -1 11]); 
hold off;