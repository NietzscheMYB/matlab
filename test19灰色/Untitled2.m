% 
% %%%灾变预测
% a=[390.6,412,320,559.2, 380.8,542.4,553,310,561,300,632,540,406.2,313.8,576,587.6,318.5]';
% t0=find(a<=320);
% t1=cumsum(t0);  %一位一位加
% n=length(t1); %求出长度
% 
% 
% %%以下套路
% B=[-0.5*(t1(1:end-1)+t1(2:end)),ones(n-1,1)];
% Y=t0(2:end);
% r=B\Y;
% y=dsolve('Dy+a*y=b','y(0)=y0');
% y=subs(y,{'a','b','y0'},{r(1),r(2),t1(1)});
% yuce1=subs(y,'t',[0:n+1]) ;
% 
% digits(6),y=vpa(y);%提高预测精度，先计算预测值，再显示微分方程的解
% %%%     y是预测函数！！！
% 
% yuce=diff(yuce1);%diff求导 默认一阶导
% yuce=[t0(1),yuce];


% 
% %灰色预测计算实例！！！！
% x0=[71.1 72.4 72.4 72.1 71.4 72.0 71.6];
% n=length(x0); 
% lamda=x0(1:n-1)./x0(2:n);%计算级比lamda
% range=minmax(lamda);%%计算区间  如果lamda在这个区间内可以作满意的GM（1，1）建模
% %%开始GM(1,1)建模
% x1=cumsum(x0);%%计算累计
% 
% for i=2:n
% z(i)=0.5*(x1(i)+x1(i-1));
% end
% B=[-z(2:n)',ones(n-1,1)];%构造数据矩阵B
% Y=x0(2:n)';%构造数据向量Y
% u=B\Y; %%计算u
% x=dsolve('Dx+a*x=b','x(0)=x0');%建立倒数模型
% x=subs(x,{'a','b','x0'},{u(1),u(2),x1(1)});
% yuce=subs(x,'t',[0:n-1]);
% digits(6),y=vpa(x);	%为提高预测精度，先计算预测值，再显示微分方程的解yuce=[x0(1),diff(yuce1)]
% %%%y是预测函数
% %%以下是模型检验！！
% 
% epsilon=x0-yuce;	%计算残差
% delta=abs(epsilon./x0);	%计算相对误差
% rho=1-(1-0.5*u(1))/(1+0.5*u(1))*lamda;	%计算级比偏差值


% %%%SARS 疫情的影响
% han1=[83.0	79.8	78.1	85.1	86.6	88.2	90.3	86.7	93.3	92.5	90.9	96.9
% 101.7 85.1	87.8	91.6	93.4	94.5	97.4	99.5	104.2	102.3	101.0	123.5
% 92.2 114.0	93.3	101.0	103.5	105.2	109.5	109.2	109.6	111.2	121.7	131.3
% 105.0 125.7	106.6	116.0	117.6	118.0	121.7	118.7	120.2	127.8	121.8	121.9
% 139.3 129.5	122.5	124.5	135.7	130.8	138.7	133.7	136.8	138.9	129.6	133.7
% 137.5 135.3	133.0	133.4	142.8	141.6	142.9	147.3	159.6	162.1	153.5	155.9
% 163.2 159.7	158.4	145.2	124.0	144.1	157.0	162.6	171.8	180.7	173.5	176.5
% ];%%%用1997-2002的计算，再检验2003的
% han1(end,:)=[];
% m=size(han1,2);
% x0=mean(han1,2);
% x1=cumsum(x0); 
% alpha=0.4;%%这里系数改为0.4
% n=length(x0);
% z1=alpha*x1(2:n)+(1-alpha)*x1(1:n-1);
% Y=x0(2:n);
% B=[-z1,ones(n-1,1)];
% ab=B\Y;
% k=6;
% x7hat=(x0(1)-ab(2)/ab(1))*(exp(-ab(1)*k)-exp(-ab(1)*(k-1)));%%%预测的式子！
% z=m*x7hat;
% u=sum(han1)/sum(sum(han1));
% v=z*u;


%%道路交通死亡预测
x1=[4.93	5.33	5.87	6.35	6.63	7.15	7.37	7.39	7.81	8.35 9.39	10.59	10.94	10.44];				
n=length(x1); 
nian=1990:2003;
plot(nian,x1,'o-'); 
x0=diff(x1); 
x0=[x1(1),x0];  %%累减生成！！！
for i=2:n
z1(i)=0.5*(x1(i)+x1(i-1));
end
z1;
B=[-z1(2:end)',z1(2:end)'.^2];
Y=x0(2:end)';
abhat=B\Y;%估计参数 a,b 的值
x=dsolve('Dx+a*x=b*x^2','x(0)=x0');	%求解常微分方程x=subs(x,{'a','b','x0'},{abhat(1),abhat(2),x1(1)});	%代入参数值yuce=subs(x,'t',0:14)	%计算预测值
% digits(6); 
% x=vpa(x); %显示微分方程的解，为了提高计算精度，把该语句放在计算预测值之后，或者不使用该语句
% yuce(16)=yuce(15); 
% x1_all=[x1,9.92,10.71];
% epsilon=x1_all-yuce;	%计算残差
% delta=abs(epsilon./x1_all);			%计算相对误差
% delta_mean=mean(delta);		%计算平均相对误差
% x1_all_0=x1_all-x1_all(1);				%数据列的始点零化像yuce_0=yuce-yuce(1);		%数据列的始点零化像s0=abs(sum(x1_all_0(1:end-1))+0.5*x1_all_0(end));
% s1=abs(sum(yuce_0(1:end-1))+0.5*yuce_0(end));
% tt=yuce_0-x1_all_0;
% s1_s0=abs(sum(tt(1:end-1))+0.5*tt(end));
% absdegree=(1+s0+s1)/(1+s0+s1+s1_s0);	%计算灰色绝对关联度
% c=std(epsilon,1)/std(x1_all,1);	%计算标准差比值






