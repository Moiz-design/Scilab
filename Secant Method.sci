clc
clear
function z=f(x)
    z=x^3-3*x-5
endfunction
y_old=0
a=0
x_matrix=[]
y_matrix=[]
///This determint the value fxn Which is nearest to 0
for i = -1000:1000
    yi=f(i)
    y_matrix=[y_matrix abs(yi)]
    x_matrix=[x_matrix i]
end
xi=0
[y0,i]= min(y_matrix)
x0=x_matrix(i)
x_new= 0
x1=x0+1
disp("Intial Guesses are "+string(x0)+","+string (x1))
for i =1:1000;
    d=(x1- x0)/((f(x1)-f(x0)));
    x_new= x1-(f(x1)*d);
    if abs(x_new-x1)<0.001 then; 
        disp("Value of equation is "+string(x_new));
        disp("No of iteration is "+string(i));
        break
     end;
    x0=x1
    x1=x_new
end
