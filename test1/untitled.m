% function   [l,v,s] = untitled(A,x0,eps)
% %UNTITLED �˴���ʾ�йش˺�����ժҪ
% %   �˴���ʾ��ϸ˵��
% v=x0;  %vΪ����������
% M=5000;   %������������
% m=0;
% l=0;
% for k=1:M
%     y=A*v;
%     m=max(y);  %mΪ��ģ���ķ���
%     v=y/m;
%     
%     if(abs(m-1)<eps)
%         l=m;  %�����辫�ȣ��˳� 1Ϊ������ֵ
%         s=k;    %sΪ��������
%         return ;
%     else
%         if(k==m)
%             disp('��������̫�࣬�����ٶ�̫��');
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
    old=0;%��¼��һ�ε����õ�������ֵ
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






