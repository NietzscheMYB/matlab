x=1790:10:2010;
y=[3.9 5.3 7.2 9.6 12.9 17.1 23.2 31.4 38.6 50.2 62.9 76.0 92.0 105.7 122.8 131.7 150.7 179.3 203.2 226.5 248.7 281.4 308.7];
plot(x,y,'bo');
hold on;
a0=[0.001,1];
[a,resnorm]=lsqcurvefit('curvefit',a0,x,y);
disp(['a=' num2str(a)]);

xi=1790:5:2020;
yi=curvefit(a,xi);
plot(xi,yi,'r-*');
x1=2020;
y1=curvefit(a,x1);
