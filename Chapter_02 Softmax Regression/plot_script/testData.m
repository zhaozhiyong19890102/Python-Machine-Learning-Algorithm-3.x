%% 计算测试数据集  
function [ testDataSet, testLabelSet ] = testData( weights, m, n)  
    testDataSet = ones(m,n);%构建了全1的矩阵  
    testLabelSet = zeros(m,1);  
    for i = 1:m  
        testDataSet(i,2) = rand()*6-3;  
        testDataSet(i,3) = rand()*19 - 4;  
    end  
      
    %% 计算测试数据的所属分类  
    for i = 1:m  
        testResult = testDataSet(i,:)*weights;  
        [C,I] = max(testResult);  
        testLabelSet(i,:) = I;  
    end  
end  