x=[
	308.58	310	295	346	367

	195.4	189.9	187.2	205	222.7
 

	24.6	21	12.2	15.1	14.57

	20	25.6	23.3	29.2	30

	18.98	19	22.3	23.5	27.655

	170	174	197	216.4	235.8

	57.55	70.74	76.8	80.7	89.85

	88.56	70	85.38	99.83	103.4

	11.19	13.28	16.82	18.9	22.8

	4.03	4.26	4.34	5.06	5.78

	13.7	15.6	13.77	11.98	13.95
];
data=x;
n=size(data,1);  %求出大小
for i=1:n
    data(i,:)= data(i,:)/data(i,1);% 标准化数据
end
ck=data(6:n,:);m1=size(ck,1);       %拿出x
bj=data(1:5,:);m2=size(bj,1);%拿出y

for i=1:m1
    for j=1:m2
        t(j,:)=bj(j,:)-ck(i,:);
    end
    jc1=min(min(abs(t')));jc2=max(max(abs(t')));
    rho=0.5;
    ksi=(jc1+rho*jc2)./(abs(t)+rho*jc2);
    rt=sum(ksi')/size(ksi,2);
    r(i,:)=rt;
end
%r 为关联矩阵！







