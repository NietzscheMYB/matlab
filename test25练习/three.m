syms t ;
 h=0.60;%���跴���߶�Ϊ0.6m


% sjiao=0.026;           %1.5
% cjiao=0.9996;  
%     sjiao=0.0348;           %2
% cjiao=0.9993;                    
%     sjiao=0.0871;           %5
% cjiao=0.9961;         
  sjiao=0.7071;           %45
cjiao=0.7071;  
% cjiao=0.9961;         
%   sjiao=0.2588;           %15
% cjiao=0.9659;  
%   sjiao=0.1736;           %10
% cjiao=0.9848;  
 v=(2*9.8*h)^0.5/cjiao; %������ٶ�
g=9.8;%�������ٶ�
t=solve(v*cjiao*t-0.5*g*t^2-h,t);%�����˶���һ��ʱ��
  v1=v*sjiao;
  l=v1*2*t;%��λ��
  
  
% 

p=45*pi/180;
syms x
x=solve(((x*sin(0.064)*cos(p)*0.4)*0.005/0.23052)-p,x);%����Ҫ��ʩ�ӵ���
