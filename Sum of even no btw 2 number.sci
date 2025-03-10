// fabonacci series
clc
clear
s=0
a=input("Enter a no");
b=input("Enter a no");
if modulo(a,2)==0 then
    while a<=b
        s=s+a
        a=a+2
        disp("The value of s is ")
        disp(s)
        disp("The value of a is ")
        disp(a)
     end
else 
    a=a+1
    while a<=b 
        s=s+a
        a=a+2
        disp("The value of s is ")
        disp(s)
        disp("The value of a is ")
        disp(a)
    end
end
