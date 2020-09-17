clear all;
clc;
close all;
xmin=-20;
xmax=20;
ymin=-20;
ymax=20;
xx=xmax-xmin;
yy=ymax-ymin;
lambda=0.00001;
pproc= poissrnd(lambda*5000*2000)
x=xx*rand(pproc,1)+xmin;
y=yy*rand(pproc,1)+ymin;
x
y
scatter(x,y)

%sinr calculation

a=[x,y]
u=[0,0];
r1=sqrt( (0-x).^2 + (0-y).^2 );

r=min(r1);

ir = r1(find(r1~=r));

alpha1=2;
alpha2=4;

rnew=r^-2;
irnew=ir.^(-2);

d=((sum(irnew)*10^(7.3))+10^20.4);
sinr=(( 10^7.3)*rnew)/d

rnew1=r^-4;
irnew1=ir.^(-4);

d1=((sum(irnew1)*10^(7.3))+10^20.4);
sinr1=((10^7.3)*rnew1)/d1;

snr=10^(-10.1);
%alha=4
k=1+((pi/2)-atan(1));
y=qfunc((lambda*pi*k)/sqrt(2/snr));

coverage1=(exp(((lambda*pi*k)^2)/(4/snr)))*y*(((pi^1.5)*lambda)/sqrt(1/snr));

%exponentialfading no noise ,alpha =4
cov=1/(1+k);
