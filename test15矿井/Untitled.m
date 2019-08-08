x1=xlsread('ÉøÍ¸ÂÊ.xlsx','v3:ad81');
y=xlsread('ÉøÍ¸ÂÊ.xlsx','k2:k81');
X=[ones(81,1) x];
[b,bint,r,rint,stats]=regress(y,X);


