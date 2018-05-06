# 第1章 Logistic Regression 

## 1、书中的代码

- [train](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/code/lr_train.py "train")

- [test](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/code/lr_test.py "test")

- 运行步骤：
	- 执行`lr_train.py`，得到最终的lr模型
	- 执行`lr_test.py`，利用训练好的lr模型对新数据进行预测

## 2、书中的图片

- 图1.1 线性可分

![](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/pic/1_1.jpg)

- 图1.2 线性不可分

![](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/pic/1_2.jpg)

- 图1.3 Sigmoid函数

![](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/pic/1_3.jpg)

- 图1.4 梯度下降的过程

![](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/pic/1_4.jpg)

- 图1.5 凸函数

![](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/pic/1_5.jpg)

- 图1.6 非凸函数

![](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/pic/1_6.jpg)

- 图1.7 下降的方向

![](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/pic/1_7_1.jpg)

![](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/pic/1_7_2.jpg)

- 图1.8 步长太大或者太小

![](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/pic/1_8_1.jpg)

![](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/pic/1_8_2.jpg)

- 图1.9 合适的步长

![](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/pic/1_9.jpg)

- 图1.10 最终的分隔超平面

![](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/pic/1_10.jpg)

## 3、图片的生成脚本

- [图1.1和图1.2的生成脚本](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/plot_script/seprate.m)
- [图1.3的生成脚本](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/plot_script/sigmoid.m)
- [图1.4的生成脚本](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/plot_script/gd.m)
- [图1.5和图1.6的生成脚本](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/plot_script/convex_non.m)
- [图1.7的生成脚本](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/plot_script/direction.m)
- [图1.8和图1.9的生成脚本](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/plot_script/step.m)
- [图1.10的生成脚本](https://github.com/zhaozhiyong19890102/Python-Machine-Learning-Algorithm-3.x/blob/master/Chapter_01%20Logistic%20Regression/plot_script/plinear.m)




