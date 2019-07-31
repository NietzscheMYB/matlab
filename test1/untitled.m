% function   [l,v,s] = untitled(A,x0,eps)
% %UNTITLED 此处显示有关此函数的摘要
% %   此处显示详细说明
% v=x0;  %v为主特征向量
% M=5000;   %迭代步数现在
% m=0;
% l=0;
% for k=1:M
%     y=A*v;
%     m=max(y);  %m为按模最大的分量
%     v=y/m;
%     
%     if(abs(m-1)<eps)
%         l=m;  %到所需精度，退出 1为主特征值
%         s=k;    %s为迭代步数
%         return ;
%     else
%         if(k==m)
%             disp('迭代步数太多，收敛速度太慢');
%             l=m;
%             s=m;
%         else
%             l=m;
%         end
%     end
% 
% 
% end

function [t,p]=pm(A,v,e)
    u=v./max(abs(v));
    old=0;%记录上一次迭代得到的特征值
    while(1)
        v=A*u;
        u=v./max(abs(v));
        if(abs(max(v)-old)<e)
            break;
        end
        old=max(v);
    end
    p=u;
    t=max(v);
end






