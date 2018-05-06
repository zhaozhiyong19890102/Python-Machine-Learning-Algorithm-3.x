clear all;
clc;

%% 画图
A = load('data.txt');

%% 原始图
figure(1);
hold on;
plot(A(:,1), A(:,2), '.b');
axis([-0.1 0.8 -0.1 0.8]);
hold off

%% 带有结果的图
figure(2);
hold on;
plot(A(:,1), A(:,2), '.b');
x = (-0.05:0.05:0.75);
y = 0.99450247031 * x + 0.00310499443379;
plot(x,y);
axis([-0.1 0.8 -0.1 0.8]);
hold off;
