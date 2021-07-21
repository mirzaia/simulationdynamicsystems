KD=208025;
KP=832100;
KI=624075;
numc=[KD, KP, KI];
denc=[1 0];

numa conv(conv(numf,nump), denc);

dena=conv(denf,polyadd(conv(denp,denc),conv(nump,numc)));
