clear all;
clc;

%% 生成特征处理的例子

X1 = zeros(50,2);
X2 = zeros(50,2);

for i = 1:50
    X1(i,1) = rand() * 2 - 1;
    X1(i,2) = rand() * 2 * sqrt(1-X1(i,1)^2) - sqrt(1-X1(i,1)^2);
end

for i = 1:50
    while 1
        X2(i,1) = rand() * 4 - 2;
        X2(i,2) = rand() * 2 * sqrt(4-X2(i,1)^2) - sqrt(4-X2(i,1)^2);
        if (X2(i,1)^2 + X2(i,2)^2 > 1.4)
            break
        end
    end
end

x = (-1.1:0.01:1.1);
y1 = zeros(1,201);
y2 = zeros(1,221);
for i = 1:221
    y1(1,i) = sqrt(1.21-x(1,i)^2);
    y2(1,i) = -sqrt(1.21-x(1,i)^2);
end

figure(1);
hold on
plot(X1(:,1), X1(:,2), '.', 'color',[0,0,0]);
plot(X2(:,1), X2(:,2), 'o','color',[0,0,0], 'MarkerSize',4);
plot(x, y1,'--', 'color',[0,0,0]);
plot(x, y2,'--', 'color',[0,0,0]);
axis([-2.2 2.2 -2.2 2.2]);
hold off

%% 进行特征处理

X3 = X1;
X4 = X2;
for i = 1:50
    X3(i,1) = X3(i,1)^2;
    X3(i,2) = X3(i,2)^2;
    X4(i,1) = X4(i,1)^2;
    X4(i,2) = X4(i,2)^2;
end
figure(2);
m = (-0.1:0.001:1.2);
n = 1.1-m;
hold on
plot(X3(:,1), X3(:,2), '.', 'color',[0,0,0]);
plot(X4(:,1), X4(:,2), 'o','color',[0,0,0], 'MarkerSize',4);
plot(m, n,'--', 'color',[0,0,0]);
axis([-0.2 4.2 -0.2 4.2]);
hold off