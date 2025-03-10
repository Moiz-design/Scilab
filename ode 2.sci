clc , clear ,clf
function xp = f(t,x)
    xp(1) = x(2)
    xp(2)=-3*x(2)+ 10 *x(1)
endfunction
t0=0 ,// Defing Intial conditon 
y0=1 ,
yp0=3 
t=3:0.1:5;// Setting uo range of t
y=ode([y0;yp0],t0,t,f);// solving a ode
plot(t,y(1,:), 'linewidth',5);

sss
