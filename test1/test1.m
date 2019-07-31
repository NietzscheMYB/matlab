
 A=[-1 1 0;-4 3 0;1 0 2];


[vecl,vall]=eig(A);

N=100;
ep=1e-6;

n=length(A);
u=ones(n,1);
index=0;
k=0;
m1=0;
while k<=N
    v=A*u;
    m=max(abs(v));
    u=v./m;
    if abs(m-m1)<ep
    index=1;
    break;
    end
m1=m;
k=k+1;
end
vecl,vall
m,u


% A=[-1 1 0;-4 3 0;1 0 2];
% 
% N=100;
% ep=1e-6;
% n=length(A);
% u=ones(n,1);
% index=0;
% k=0;
% m1=0;
% x=0;
% flag=0;
% for i=1:n
%     flag=i;
%     while k<=N
%  
%         if flag==1
%             v=A*u;
%             m=max(abs(v));
%             u=v./m;
%             if abs(m-m1)<ep
%             index=1;
%             break;
%             end
%         m1=m;
%         k=k+1;
%         end
%         if flag==2
%                 v=A*u;
%                 m=max(abs(v));
%                 q=v-m;
%                 x=max(abs(q));
%                 u=v./x;
%                    if abs(m-m1)<ep
%                     index=1;
%                     break;
%                     end
%         end
%         if flag==3
%                 v=A*u;
%                 m=max(abs(v));
%                 q=v-m;
%                 x=max(abs(q));
%                 p=q-x;
%                 h=max(abs(p));
%                 u=v./h;
%                    if abs(m-m1)<ep
%                     index=1;
%                     break;
%                    end
%         end
%     end
% disp(m);
% m1=0;
% m=0;
%  end


