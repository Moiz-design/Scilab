clear , clc , clf 
function yp = f(t,y)
    yp=t-y;
endfunction
t0=0;
y0=1;
t=0:0.1:100
y = ode (y0, t0 , t , f);
plot(t,y,'linewidth',5)
,
