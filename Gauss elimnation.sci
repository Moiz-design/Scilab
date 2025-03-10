clc
clear
x_matrix=[11 34 3 ; 34 55 6 ; 3 4 6 ]
y_matrix=[2; 3; 55]
a=[x_matrix,y_matrix]
n=length(y_matrix)
for j=1:n-1
    for i =j+1:n
        m=a(i,j)/a(j,j)
        a(i,:)=a(i,:)- (m*a(j,:))
    end
end
disp(a)
printf("\n")
value_x=a(3,4)/a(3,3)
disp("value of x :- ")
disp(value_x)
disp("value of y :- ")
value_y= a(2,4)-(a(2,2)*value_x)
disp(value_y)
