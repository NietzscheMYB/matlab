x1=xlsread('��͸��.xlsx','v3:ad81');
y=xlsread('��͸��.xlsx','k2:k81');
X=[ones(81,1) x];
[b,bint,r,rint,stats]=regress(y,X);


