
tdata=[0.25 0.5 0.75 1 1.5 2 2.5 3 3.5 4 4.5 5 6 7 8 9 10 11 12 13 14 15 16];
vdata=[30 68 75 82 82 77 68 68 58 51 50 41 38 35 28 25 18 15 12 10 7 7 4];
x0=[-54468 0.1755 2];

% -------------
 [beta,R,J]=nlinfit(tdata,vdata,'curvefun1',x0');

f=curvefun1(beta,tdata);

m=0:0.5:20;
ym=curvefun1(beta,m);

ff=(2*beta(1)/(beta(2)-beta(3)))*(exp(-beta(3)*tdata)-exp(-beta(2)*tdata))/472.5;
ymm=interp1(tdata,ff,m,'spline');
%plot(tdata,vdata,'o',tdata,f,'r');
plot(tdata,vdata,'o',m,ymm,'r');

xlabel('时间/t');
ylabel('酒精浓度/c');
title('人体内酒精随时间变化的曲线');

T1=(1*beta(1)/(beta(2)-beta(3)))*(exp(-beta(3)*6)-exp(-beta(2)*7))/472.5;
%yyy=((beta(1)*((1+exp(-beta(3)*T1))*exp(-beta(3)*8)-(1+exp(-beta(2)*T1))*exp(-beta(2)*8)))/(beta(2)-beta(3)));
yyy=-27034.6*((1+exp(-beta(3)*T1))*exp(-beta(3)*7)-(1+exp(-beta(2)*T1))*exp(-beta(2)*7))/472.5;



