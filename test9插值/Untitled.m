% hours=1:12;
% temps=[5 8 9 15 25 29 31 30 22 25 27 24];
% h=1:0.1:12;
% t1=interp1(hours,temps,h,'nearest');
% t2=interp1(hours,temps,h,'linear');
% t3=interp1(hours,temps,h,'cubic');
% t4=interp1(hours,temps,h,'spline');
% %plot(hours,temps,'rh',h,t1,'b',h,t2,'k');
% plot(hours,temps,'rh',h,t4,'k');


% x=1:5;
% y=1:3;
% temps=[82 81 80 82 84;79 63 61 65 81;84 84 82 85 86];
% mesh(x,y,temps);
% 
% xi=1:0.2:5;
% yi=1:0.2:3;
% zi=interp2(x,y,temps,xi,yi','cubic');
% mesh(xi,yi,zi);

% x=0:.5:5;
% y=0:.5:6;
% [xx,yy]=meshgrid(x,y);
% z=[89 90 87 85 92 91 96 93 90 87 82
%    92 96 98 99 95 91 89 86 84 82 84
%    96 98 95 92 90 88 85 84 83 81 85
%    80 81 82 89 95 96 93 92 89 86 86
%    82 85 87 98 99 96 97 88 85 82 83
%    82 85 89 94 95 93 92 91 86 84 88
%    88 92 93 94 95 89 87 86 83 81 92
%    92 96 97 98 96 93 95 84 82 81 84
%    85 85 81 82 80 80 81 85 90 93 95
%    84 86 81 98 99 98 97 96 95 84 87
%    80 81 85 82 83 84 87 90 95 86 88
%    80 82 81 84 85 86 83 82 81 80 82
%    87 88 89 98 99 97 96 98 94 92 87];
% %mesh(xx,yy,z);
% 
% 
% 
% 
% xi=linspace(0,5,50);  %加密横坐标数据到50个
% yi=linspace(0,6,80);  %加密纵坐标数据到60个
% [xii,yii]=meshgrid(xi,yi);  %生成网格数据
% zii=interp2(x,y,z,xii,yii,'cubic');  %插值
% mesh(xii,yii,zii)  %加密后的地貌图

clc;clf;clear all;
x=[129	140	103.5	  88	185.5	195	105	157.5	107.5	77	81	162	162	117.5];
y=[7.5	141.5	23	147	  22.5	137.5	85.5	-6.5	-81	 3	 56.5	-66.5	84	-33.5];
z=-[ 4	8	6	8	6	8	8	  9 	9	8	8	9	4	9];
plot3(x,y,z,'o'),   hold on    %原始数据点

cx=75:0.5:200;
cy=[-70:0.5:150]';
cz=griddata(x,y,z,cx,cy,'cubic');
meshz(cx,cy,cz);