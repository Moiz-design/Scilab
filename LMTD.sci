// Algorithm for Calculation  of LMTD
clc
Tc1 = input("Enter  temp of cold liquild while entering");
Tc2 = input("Enter  temp of cold liquild while exiting");
Th1 =input("Enter  temp of Hot liquild while entering") 
Th2 =input("Enter  temp of Hot liquild while exiting");
c=input("1 = Co-Curent flow 2 = Counter Current flow");
if  c == 1  then
    a=Th1-Tc1
    b=Th2-Tc2
elseif   c == 2 then
    a=Th1-Tc2
    b=Th2-Tc1
else 
    disp("Pls Choose friom above option")   
    abort;
end
LMTD= (a-b) / log(a/b);
disp("The LMTD of  given no is ")
disp(LMTD)
