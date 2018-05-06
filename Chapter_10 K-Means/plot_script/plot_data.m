clear all;
clc;

%% 画图
a = load('data.txt');
figure(1);
hold on;
plot(a(1:20,1), a(1:20,2), '.','color',[0,0,0])
plot(a(21:40,1), a(21:40,2), '*','color',[0,0,0], 'MarkerSize',5)
plot(a(41:60,1), a(41:60,2), 'o','color',[0,0,0], 'MarkerSize',3)
plot(a(61:80,1), a(61:80,2), 'x','color',[0,0,0], 'MarkerSize',5)
axis([-9 9 -9 9]);
hold off;

%% 异常的结果
figure(2);
hold on;
plot(a(1:20,1), a(1:20,2), '.','color',[0,0,0])
plot(a(21:40,1), a(21:40,2), '*','color',[0,0,0], 'MarkerSize',5)
plot(a(41:60,1), a(41:60,2), 'o','color',[0,0,0], 'MarkerSize',3)
plot(a(61:80,1), a(61:80,2), 'x','color',[0,0,0], 'MarkerSize',5)
axis([-9 9 -9 9]);
b = load('err_exam.txt');
plot(b(:,1), b(:,2), '+','color',[0,0,0], 'MarkerSize',10)
hold off;

%% 正常的结果
figure(3);
hold on;
plot(a(1:20,1), a(1:20,2), '.','color',[0,0,0])
plot(a(21:40,1), a(21:40,2), '*','color',[0,0,0], 'MarkerSize',5)
plot(a(41:60,1), a(41:60,2), 'o','color',[0,0,0], 'MarkerSize',3)
plot(a(61:80,1), a(61:80,2), 'x','color',[0,0,0], 'MarkerSize',5)
axis([-9 9 -9 9]);
b = load('result.txt');
plot(b(:,1), b(:,2), '+','color',[0,0,0], 'MarkerSize',10)
hold off