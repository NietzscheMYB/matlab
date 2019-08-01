% x=-8:0.1:8;
% y=normpdf(x,0,1);
% figure(1);
% plot(x,y);
% y1=normpdf(x,1,2);
% figure(2);
% plot(x,y,x,y1,'--');

% x=-10:0.01:10;
% r=1;
% y=unifpdf(x,0,2*pi*r);
% plot(x,y,'r--');

% p1=[1 8 0 0 -10];
% p2=[2 -1 3];
% c=conv(p1,p2);
% [q,r]=deconv(p1,p2);

% p1=[1 -1];
% p2=[1 -1 3];
% [q,p]=polyder(p1,p2);
% q,p

% p=[1 2 1];
% x=1:4;
% y=polyval(p,x);

% a=[1 2 3;1 2 3;1 2 3];


syms x;
f=1/(x+1)-2/(x^3-2);
limit(f,x,1)
