clear all;
clc;

%% »­Í¼
A = load('data.txt');
B1 = load('predict_1');
B2 = load('predict_01');
B3 = load('predict_002');

C1 = sortrows(B1,1);
C2 = sortrows(B2,1);
C3 = sortrows(B3,1);

%% k = 1
figure(1);
hold on;
plot(A(:,1), A(:,2), '.b');
axis([-0.1 0.8 -0.1 0.8]);
plot(C1(:,1),C1(:,2));
hold off;

%% k = 0.01
figure(2);
hold on;
plot(A(:,1), A(:,2), '.b');
axis([-0.1 0.8 -0.1 0.8]);
plot(C2(:,1),C2(:,2));
hold off;

%% k = 0.002
figure(3);
hold on;
plot(A(:,1), A(:,2), '.b');
axis([-0.1 0.8 -0.1 0.8]);
plot(C3(:,1),C3(:,2));
hold off;