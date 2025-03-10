clc
clear
n=input("Enter the no of data points u have")
disp("Enter the y values:");
for i = 0:n
     yi = input("Enter value of y" + string(i) + ": ");
     y_matrix = [y_matrix, yi];
end
for j = 0:n
    xi = input("Enter value of x" + string(j) + ": ");
    x_matrix = [x_matrix, xi];
end
a=sum(x_matrix)
b=sum(y_matrix)
xy=x_matrix.*y_matrix
x2=x_matrix.^2
c=sum(xy)
d=sum(x2)
delta=[n a ;a d]
delta_a0=[b c;a d]
delta_a1=[n a ; b c]
a0=det(delta_a0)/det(delta)
a1=det(delta_a1)/det(delta)
disp(a0)
disp(a1)
printf("The required eqaution %0.4fx+%f",a1,a0)
plot2d(x_matrix,y_matrix,-1)
a=gca()
a.grid=[2,,2 ]
a.background=6
a.parent.background=2
a.x_location="middle"
a.font_size=4
a.thickness=2
a.children.children.thickness=10
a.box="on"
a.data.bounds=[0,0;10,20]
delete(gca())
