W=4200;
Wf=125;
Wr=125;
Kfs=120;
Krs=180;
Bf=25;
Br=35;
Kft=1100;
Krt=1100;
I=40000;
Lf=55;
Lr=65;
V0=20;
Ab=4;
L=1;
M=W;
Mf=Wf;
Mr=Wr;

A = [0 1 0 0 0 0 0 0; (-(Kfs+Krs)/M) (-(Bf+Br)/M) (Kfs/M) (Bf/M) (Krs/M) (Br/M) (((Krs*Lr)-(Kfs*Lf))/M) (((Br*Lr)-(Bf*Lf))/M); 0 0 0 1 0 0 0 0; (Kfs/Mf) (Bf/Mf) (-(Kfs+Kft)/Mf) -(Bf/Mf) 0 0 ((Kfs*Lf)/Mf) ((Bf*Lf)/Mf); 0 0 0 0 0 1 0 0; (Krs/Mr) (Br/Mr) 0 0 (-(Krs+Krt)/Mr) (-(Br/Mr)) (-(Krs*Lr)/Mr) (-(Br*Lr)/Mr); 0 0 0 0 0 0 0 1; (((Krs*Lr)-(Kfs*Lf))/I) (((Br*Lr)-(Bf*Lf))/I) ((Kfs*Lf)/I) ((Bf*Lf)/I) (-(Krs*Lr)/I) (-(Br*Lr)/I) (-(((Kfs*(Lf^2)))+((Krs*(Lr^2))))/I) (-((Bf*(Lf^2))+((Br*(Lr^2))))/I)];
B = [0 0; 0 0; 0 0; (Kft/Mf) 0; 0 0; 0 (Kft/Mr); 0 0; 0 0];
C = [1 0 0 0 0 0 0 0; 0 0 1 0 0 0 0 0; 0 0 0 0 1 0 0 0; 0 0 0 0 0 0 1 0];
D = [0 0; 0 0; 0 0; 0 0];

t=uf_ur(:,1);
uf=uf_ur(:,2);
ur=uf_ur(:,3);
figure(1)
subplot(2,1,1)
plot(t,uf,'b','LineWidth',1.3)
grid on
set(gca,'XTick',[1.8:0.05:2.4],'YTick',[0:4],'FontSize',11)
ylabel('u_f (in)','FontSize',13)
axis([1.75 2.45 -0.5 4.5])
set (gca,'XTick',[1.8:0.05:2.4],'YTick',[0:4])