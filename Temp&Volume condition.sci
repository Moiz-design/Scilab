clc
clear
temp=input("Enter temprature");
volume=input("enter Volume ")
if temp > =60  && volume >=40 then
    disp("Volumeshould be increase ")
    disp("Temp should be decrease ")
    abort
elseif temp<=40 && volume <= 30  then
    disp("Volume sholude increase")
    disp("Temp should  increase")
    abort;
elseif temp>=60 && volume>=30 &&volume<=40 then 
    disp("Volume is optimum but  temp should be Decrease")
    abort
elseif temp<=40&& volume>=30 && volume<=40 
    disp("Volume is optimum but  temp should be Increase")
    abort
elseif volume>=60 &&  temp>=40&&temp<=60 then 
    disp("Temp is optimum but  Volume should be Decrease")
    abort
elseif volume<=30&& temp>= 40&&temp<=60 then 
    disp("Temprature is  optimum but  volume should be Increase")
    abort
else
    disp("Optimum condition  has been meant")
    abort
end
