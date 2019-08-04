x=1200:400:4000;
y=1200:400:3600;
z=[1130 1250 1280 1230 1040 900 500 700
    1320 1450 1420 1400 1300 700 900 850
    1390 1500 1500 1400 900 1100 1060 950
    1500 1200 1100 1350 1450 1200 1150 1010
    1500 1200 1100 1550 1600 1550 1380 1070
    1500 1550 1600 1550 1600 1600 1600 1550 
    1480 1500 1550 1510 1430 1300 1200 980];
xi=linspace(1200,4000,100);
yi=linspace(1200,4000,100);
[xii,yii]=meshgrid(xi,yi);
zii=interp2(x,y,z,xii,yii,'cubic');
subplot(1,3,1);
mesh(xii,yii,zii);

ziii=interp2(x,y,z,xii,yii,'nearest');
subplot(1,3,2);
mesh(xii,yii,ziii);

xx=interp2(x,y,z,xii,yii,'linear');
subplot(1,3,3);
mesh(xii,yii,xx);

