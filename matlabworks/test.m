lambda =0.1;
r_total =10;
cell_area = (2*r_total)^2;
init_n = poissrnd(lambda*cell_area);
   
%UserPoints = sqrt(cell_area)*rand(init_n,2); 
X = -r_total + 2*r_total*rand(init_n,1)
Y = -r_total + 2*r_total*rand(init_n,1)
voronoi(X,Y,'o');hold on 

usern=poissrnd(0.01*cell_area);
Xq=-r_total + 2*r_total*rand(usern,1);
Yq=-r_total + 2*r_total*rand(usern,1);

%num_users = 10;

%Xq = rand(num_users,1);
%Yq = rand(num_users,1);



%Xq = -r_total + 2*r_total*rand(num_users,1)
%Yq = -r_total + 2*r_total*rand(num_users,1)

IDX = knnsearch([X Y], [Xq Yq])

p=(1-0.01/0.1);
newb=(1-p)*0.1;
init_n = poissrnd(newb*cell_area);
X1 = -r_total + 2*r_total*rand(init_n,1)
Y1 = -r_total + 2*r_total*rand(init_n,1)



IDX2 = knnsearch([X1 Y1], [Xq Yq])


