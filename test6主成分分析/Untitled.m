S=[19.94 10.50 6.59 8.63
    10.50 23.56 19.71 7.97
    6.59 19.71 20.95 3.93
    8.63 7.97 3.93 7.55];


% 主成分有关的函数
% 1. Mean(x) 按列返回矩阵X的均值
% 2. Cov(x)求矩阵x的协方差矩阵
% 3. Corrcoef(x)求矩阵X的相关系数矩阵
% 4. [pc,score,latent,tsquare]=Princomp(x) 对原始观察的数据矩阵X进行主成分分析
% pc为相对于特征值latent的特征向量
% score 为主成分Yi中的元素
% latent 为特征值的排序
% tsquare 为t平方统计量
% 5. Pcacov(S) 返回协方差矩阵S的特征值所对应的标准正交特性向量，特征值的排序结果以及各特征值在特征值总和中所占比例
% [pc,latent,explained]=pcacov(S)
% pc为特征值所对应的标准正交特征向量
% latent为特征值的排序
% explained为各特征值在特征值总和中所占的比例

[pc,latent,explained]=pcacov(S);
