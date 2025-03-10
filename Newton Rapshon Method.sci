clc
clear
function z=f(x)
    z=x^3-3*x-5
endfunction
x_matrix=[]
y_matrix=[]
for i = -1000:1000
    yi=f(i)
    y_matrix=[y_matrix abs(yi)]
    x_matrix=[x_matrix i]
    
end
xi=0
[y0,i]= min(y_matrix)
x0=x_matrix(i)
disp("The intial Guess is :- "+string(x0))
x_new= 0
for i =1:1000
    d=numderivative(f, x0)
    x_new= x0-(f(x0)/d)
    if abs(x_new-x0)<0.001 then 
        disp("Value of equation is :- "+string(x_new))
        disp("No of Interation is :-"+string(i))
        break
     end
    x0=x_new
end
