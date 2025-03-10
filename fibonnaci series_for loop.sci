// fabonacci series
clc
clear
n=input("Enter a no");
a=0;
b=1;
disp(a,b)
for i = 1:n
    a =a+b ;
    b=a+b
    disp(a)
    disp(b)
end
// in original code a and b was printing before changing due to which last change was not being displaed but now a nd b are displayed after changes only constrained is that the origial value 0 and 1 is not being displayed
