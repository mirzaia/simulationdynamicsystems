numa=conv(conv(numf,nump),denc);
dena=conv(denf,polyadd(conv(denp,denc),conv(nump,numc)));

t=0:0.05:5;
step(0.1*numa,dena,t)
title('closed-loop respon to 0.1m high step w/ pid kontroller')

z1=1;
z2=3;
p1=0;
numc=conv([1 z1],[1 z2])
denc=[1 p1]
num2=conv(nump,numc);
den2=conv(denp,denc);
rlocus(num2,den2)
title('root locus with PID kontroller')
[K,p]=rlocfind(num2,den2)


m1=2500;
m2=320;
k1=80000;
k2=500000;
b1=350;
b2=15020;
nump=[(m1+m2) b2 k2];
denp=[(m1*m2) (m1*(b1+b2))+(m2*b1) (m1*(k1+k2))+(m2*k1)+(b1*b2) (b1*k2)+(b2*k1) (k1*k2)];

num1=[-(m1*b2)-(m1*k2) 0 0];
den1=[(m1*m2) (m1*(b1+b2))+(m2*b1) (m1*(k1+k2))+(m2*k1)+(b1*b2) (b1*k2)+(b2*k1) (k1*k2)];

numf=num1;
denf=nump;