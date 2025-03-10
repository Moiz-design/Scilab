clc
clear
n = input("Enter the number of data points :- ");
y_matrix = [] // Initialize array to store y values
for i = 1:n
    yi=input("Enter Value of y"+string(i)+":- ")
    y_matrix=[y_matrix yi]
end
x_matrix= []
for i =1:n
    xi=input("Enter value of x")
    x_matrix=[x_matrix xi]
end
langrage=[]
xl=input("Enter value of x for u want to find y :-  ")
for j =1:n
    pr =1
    for i =1:n
        if j~=i then
            pr=pr*(xl-x_matrix(i))/(x_matrix(j)-x_matrix(i))
        end
     end
    langrage=[langrage pr]
end
value=0;
for j = 1:n
    value=value + langrage(j)*y_matrix(j)
end
disp("Value of give "+ string(xl) + "  is  "+ string(value))
