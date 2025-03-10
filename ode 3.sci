clc , clear ,clf
function xp = f(t,x,a)
    xp(1) = x(2)
    xp(2)=-3*x(2)+ a *x(1)
endfunction
t0=0 ,y0=1 ,yp0=3
t=3:0.1:5;
a=10;
y=ode([y0;yp0],t0,t, list(f,a));
a=8+
y1=ode([y0;yp0],t0,t, list(f,a));
plot(t,y(1,:),"g", t,y1(1,:),"r",'linewidth',5);
xlabel("input")
ylabel("output")
legend('a=10','a=8')
