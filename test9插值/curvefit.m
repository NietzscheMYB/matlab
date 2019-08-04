function f= curvefit(a,t)
f=a(1)./(1+(a(1)/3.9-1)*exp(-a(2)*(t-1790)));
