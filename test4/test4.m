disp('��������20����');
% a=round(rand(20)*100);
% a=a+a';
% for i=1:length(a)
%     a(i,i)=0;
% end
M=10000;

A = [14     16
    40     64;
    25     95;
    22     70;
    30     19;
    62     28;
    37     67;
    30     80;
    56     60;
    28      3;
    70     13;
    34     69;
    85     74;
    83     52;
    23     95;
    66     25;
    33     31;
    51     56;
    11     29;
    60     18];

X = A(:,1);
Y = A(:,2);

N = length(X);
D = zeros(N,N);

for I = 2:N
for J = 1:I-1
    D(I,J) = round(sqrt((X(I) - X(J))*(X(I) - X(J)) + (Y(I) - Y(J))*(Y(I) - Y(J))));
end
end
D=D+D';

a=D;


disp('��Ϊ4����');        %�ֳ�4����
for i=1:length(a)/2+1
    for j=1:length(a)/2+1
        a1(i,j)=a(i,j);
    end
end
  k=1;
 
for i=1:length(a)/2
     l=1;
    for j=length(a)/2+1:length(a)
        a2(k,l)=a(i,j);
        l=l+1;
    end
    k=k+1;
end

k=1;
for i=length(a)/2+1:length(a)
    l=1;
    for j=1:length(a)/2
        a3(k,l)=a(i,j);
        l=l+1;
    end
    k=k+1;
end


k=1;
for i=length(a)/2+1:length(a)
    l=1;
    for j=length(a)/2+1:length(a)
        a4(k,l)=a(i,j);
        l=l+1;
    end
    k=k+1;
end
  
[x1,y1,z1]=route(a1);  %ֻѡȡ2���ֽ��в���
[x2,y2,z2]=route(a4);
[x3,y3,z3]=route(a);

disp('��һ���㵽���һ����ķ��εõ��ľ���Ϊ')
minroute=x1(length(x1))+x2(length(x2));
minroute
disp('̰�ĵõ��ľ���Ϊ');
x3(20)


function [x,y,z]=route(a)  %�������
M=10000;
pb(1:length(a))=0;
pb(1)=1;
index1=1;
index2=ones(1,length(a));

d(1:length(a))=M;           %d Ϊ��¼��һ���㵽���������̾���
d(1)=0;
temp=1;

while sum(pb) <length(a)            %�����е㱻���
    tb=find(pb==0);              %�ҵ�û�б���ǵĵ�
    d(tb)=min(d(tb),d(temp)+a(temp,tb));
    tmpb=find(d(tb)==min(d(tb)));
    temp=tb(tmpb(1));
    pb(temp)=1;
    index1=[index1,temp];
    index=index1(find(d(index1)==d(temp)-a(temp,index1)));
    if length(index)>=2
        index=index(1);
    end
    index2(temp)=index;
end
    x=d;
    y=index1;

    z=index2;
end
