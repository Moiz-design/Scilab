clc , clear
n=input("Enter a no");
if n<0 then
    disp("Give a proper no");
    abort;
elseif n==0 then 
    disp("1");
else
    f=1
    for i = 1:n
        f=f*i;
    end 
   disp(f)  
end

