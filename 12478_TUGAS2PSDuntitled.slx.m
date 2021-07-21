
M=4200;
Mf=125;
Mr=125;
Kfs=120;
Krs=180;
Bf=25;
Br=35;
Kft=1100;
Krt=1100;
l=40000;
Lf=55;
Lr=65;
Vo=20;
Ab=4;
L=1;
A=[0 1 0 0 0 0 0 0; -(Kfs+Krs)/M -(Bf+Br)/M Kfs/M Bf/M Krs/M Br/M ((Krs*Lr)-(Kfs*Lf))/M ((Br*Lr)-(Bf*Lf))/M; 0 0 0 1 0 0 0 0; Kfs/Mf Bf/Mf -(Kfs+Kft)/Mf -Bf/Mf 0 0 (Kfs*Ls)/Mf (Bf*Lf)/Mf; 0 0 0 0 0 1 0 0; Krs/Mr Br/Mr 0 0 -(Krs+Krt)/Mr -Br/Mr -(Krs*Lr)/Mr -(Br*Lr)/Mr; 0 0 0 0 0 0 0 1; ((Krs*Lr)-(Kfs*Lf))/l  ((Br*Lr)-(Bf*Lf))/l (Kfs*Lf)/l (Bf*Lf)/l -(Krs*Lr)/l -(Br*Lr)/l -((Kfs*(Lf)^2)+(Krs*(Ls)^2))/l -((Bf*(Lf)^2)+(Br*(Ls)^2))/l;]
B=[0 0; 0 0; 0 0; Kft/Mf 0; 0 0; 0 Kft/Mr; 0 0; 0 0;]
C=[1 0 0 0 0 0 0 0; 0 0 1 0 0 0 0 0; 0 0 0 0 1 0 0 0; 0 0 0 0 0 0 1 0;]
D=[0 0; 0 0; 0 0; 0 0;]


