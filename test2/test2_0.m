M=10000;


disp('��������10����');
disp('��һ���㵽������ľ���')
a=round(rand(3)*100);          %�����ľ���
a=a+a';
for i=1:3
    a(i,i)=0;
end

[x,y,z]=route(a);
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








