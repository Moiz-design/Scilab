clc
clear
clf
function z=f(x)
    z=x^3-5*x+1
endfunction
y_old=0
a=0
b=0
for x=-100:1000
    y=f(x);
    if y_old*y<0 
        b=x;
        a=x-1;
        break;
    end
    y_old=y;
end
disp("The Roots lie btw :- " + string(a)+ " and "+string(b))
//Regula falsi Method
    c_old = 0;
for i = 1:100
    c=(a*f(b)-b*f(a))/(f(b)-f(a));
    z=f(c)
    if z*f(a)<0  
        b=c;
    elseif  z*f(b) <  0 
         a=c;
    end
    if abs(c_old-c)<0.0001 
        disp("The root of given equation is "+ string(c))
        disp("No of iteration "+ string (i))
           break;
    end
    c_old=c;
end
x=linspace(-100,10000,1000);
z=x.^3-2*x + 1;
plot(x,z,"-r")
a=gca()
xtitle("Linear Equation  ", "x-axis","y-axis")
a.background=4
