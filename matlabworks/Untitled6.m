clear all;
clc;
close all;
r=1; %radius of disk
xx0=0; yy0=0; %centre of disk
areaTotal=pi*r^2;

lambda=1000; 

numbPoints=poissrnd(areaTotal*lambda);
theta=2*pi*(rand(numbPoints,1));
rho=r*sqrt(rand(numbPoints,1)); 

[xx,yy]=pol2cart(theta,rho); 

xx=xx+xx0;
yy=yy+yy0;

scatter(xx,yy);