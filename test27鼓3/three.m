syms t ;
h=0.60;%假设反弹高度为0.6m
% sjiao=0.026;           %1.5
% cjiao=0.9996;  
%     sjiao=0.0348;           %2
% cjiao=0.9993;                    
%     sjiao=0.0871;           %5
% cjiao=0.9961;         
%sjiao=0.7071;           %45
%cjiao=0.7071;  
% cjiao=0.9961;         
sjiao=0.2588;           %15
 cjiao=0.9659;  
%   sjiao=0.1736;           %10
% cjiao=0.9848;

% ssjiao=[0.026,0.0348,0.0871,0.1736,0.2588,0.7071];
% ccjiao=[0.9996,0.9993,0.9961,0.9848,0.9659,0.7071];
% 
% for i=1:6
%     sjiao=ssjiao(i);
%     cjiao=ccjiao(i);
%     v=(2*9.8*h)^0.5/cjiao; %计算出速度
%     g=9.8;%重力加速度
%     t=solve(v*cjiao*t-0.5*g*t^2-h,t);%抛体运动的一半时间
%     v1=v*sjiao;
%     l(i)=v1*2.*t(1);%总位移
% 
% end


v=(2*9.8*h)^0.5/cjiao; %计算出速度
g=9.8;%重力加速度
t=solve(v*cjiao*t-0.5*g*t^2-h,t);%抛体运动的一半时间
v1=v*sjiao;
l=v1*2*t;%总位移!!


    
p1=[1.5,2,5,10,15,45];
p2=p1.*pi/180;

for i=1:6
    syms x
    x=solve(((x*sin(0.064)*cos(p2(i))*0.4)*0.005/0.23052)-p2(i),x);%所需要的施加的力
    p(i)=x;
end
l(1)
p'            %不同角度所需要力的大小
