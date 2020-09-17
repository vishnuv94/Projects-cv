function y=fun2(lambu,lambb)
s=((3.5^3.5)*(lambb^3.5))/(gamma(3.5));
syms x
fun=(s*(x^2.5)*(exp((-3.5*lambb -lambu)*x)));


q=int(fun,x,0,inf);

y=q;
end
