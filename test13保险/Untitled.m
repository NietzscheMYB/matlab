nzong=[1665328 1764898 1154461 8760058];
nsuo=[582756 582463 115857 700872];
nsi=[11652 23315 2292 7013];


for i=1:4
    l(i)=log(nzong(i))-log((nzong(i)-nsuo(i)));
    k(i)=nsi(i)/nsuo(i);
end
nsi=[11652 23315 2292 7013];

for i=1:4
    ntui(i)=(nsuo(i)-nsi(i))*(1-exp(-l(i)))/2;
end

xxia=[1520164	1275781	1113482	9073640];
for i=1:4
    msuo(i)=xxia(i)*(1-exp(-l(i)));
    msi(i)=msuo(i)*k(i);
end




