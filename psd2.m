m1=2500;
m2=320;
k1 = 80000;
k2 = 500000;
b1 = 350;
b2 = 15020;
nump=[(m1+m2) b2 k2];
denp=[(m1*m2)   (m1*(b1+b2))+(m2*b1) (m1*(k1+k2))+(m2*k1)+(b1*b2)  (b1*k2)+(b2*k1) k1*k2];
num1=[-(m1*b2) -(m1*k2) 0 0];
den1=[(m1*m2)   (m1*(b1+b2))+(m2*b1) (m1*(k1+k2))+(m2*k1)+(b1*b2)   (b1*k2)+(b2*k1) k1*k2];
numf=num1;
denf=nump;

rlocus(nump,denp);
z=-log(0.05)/sqrt(pi^2+(log(0.05)^2));
sgrid(z,0);