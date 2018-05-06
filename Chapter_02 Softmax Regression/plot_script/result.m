clear all;
clc;
%% 测试数据集(主要在区间里随机生成)  
size = 4000;
weights=load('weights');
[testDataSet, testLabelSet] = testData(weights, size, 3);  
%% 画出最终的分类图  
figure;  
hold on  
for i = 1:size  
    if testLabelSet(i,:) == 1  
        plot(testDataSet(i,2),testDataSet(i,3),'.', 'color',[0.7,0.7,0.7]);  
    elseif testLabelSet(i,:) == 2  
        plot(testDataSet(i,2),testDataSet(i,3),'.', 'color',[0.7,0.7,0.7]);  
    elseif testLabelSet(i,:) == 3  
        plot(testDataSet(i,2),testDataSet(i,3),'.', 'color',[0.95,0.95,0.95]);  
    else  
        plot(testDataSet(i,2),testDataSet(i,3),'.k');  
    end  
end  
%title('测试数据集');  
hold off  