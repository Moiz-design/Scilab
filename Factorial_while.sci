clc
clear
n=input("Enter No of points ")
a=0
b=1
while n ~ = 0
    disp(a);//This first print  a without changing its value
    a =a+b//This will change the value of a from previous to the sum of a + b
    disp(b) // This First pritnt b without changing its value 
    b=a+b// This will chage the value of b from previous to a+b ("a will the chang value")
    n=n-1
    if n==0 then ;
        abort
        continue
    end
end
