xMin=0;xMax=1;
yMin=0;yMax=1;
xDelta=xMax-xMin;yDelta=yMax-yMin; 
areaTotal=xDelta*yDelta; 

lambda=10; 

numbPoints=poissrnd(areaTotal*lambda);
xx=xDelta*(rand(numbPoints,1))+xMin;%x coordinates of Poisson points
yy=xDelta*(rand(numbPoints,1))+yMin;
scatter(xx,yy);%y coordinates of Poisson points
xxyy=[xx(:) yy(:)];
%combine x and y coordinates

%[vx,vy]=voronoin(xxyy);
voronoi(xx,yy,'o');hold on ;