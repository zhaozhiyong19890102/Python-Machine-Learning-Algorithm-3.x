clear all;
clc;

%% »­³öÊÖĞ´×ÖÌå
x = loadMNISTImages('train-images.idx3-ubyte');
y = loadMNISTLabels('train-labels.idx1-ubyte');

A = zeros(784,10); % ´æ´¢0-9

index_count = zeros(1,10);

for i = 1:60000
    num = y(i, 1) + 1;
    if index_count(1, num) == 0
        A(:,num) = x(:, i); 
    end
    
    if sum(index_count) ==10
        break;
    end
end

for i = 1:10
    subplot(2,5,i);imshow(reshape(A(:,i), 28, 28));
end
