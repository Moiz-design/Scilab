clc
clear
u1=input("enter starting point")
ui=u1
disp("First Term is ")
disp(ui)
for i=1:(20)
    ui=ui+2*i+3
    disp("Thiis is "+string(i)+"Term")
    disp(ui)
end
