clc , clear ,clf
function xp = f(y,t,k1)
    xp= - k1*y;
endfunction

function Cp = f2(Cb,t,y,k2,k1)
    Cp=k1*y - k2*Cb
endfunction

function zp=f3(z,t,k2,Cb)
    zp=k2*Cb;
endfunction
k1=1;
y0 =5; 
t0=0;
k2=.5
Cb0=0;
zp0=0
t = 0:.1:10; // We here time frame is from 0 to10sec interval is of 1sec
y=ode(y0, t0, t, list(f, k1))
Cb=ode(Cb0, t0, t, list(f2, k1,k2,y))
zp=ode(zp0,t0,t,list(f3,k2,Cb))
plot(t,zp,"m")
plot(t,y,"k","linewidth",2)
plot(t,Cb,"r")
xlabel("Time")
ylabel("Concentratron")
