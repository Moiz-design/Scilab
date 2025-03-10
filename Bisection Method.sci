clc
clear
function z=f(x)
    z=x^3-5*x +1
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
disp("Intial Guess are "+ string(a)+"," +string(b))
//Bisection Method
    c_old = 0;
for i = 1:100
    c=(a+b)/2;
    z=f(c)
    if z*f(a)<0 //This Check Whethe S 
        b=c;
    elseif  z*f(b) <  0 
         a=c;
    end
    if abs(c_old-c)<0.0001 then
        disp("The root of given equation is "+ string(c))
        disp("No of iteration it took :- "+string(i))
           break;
    end
    c_old=c;
end


