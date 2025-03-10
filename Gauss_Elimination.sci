clc
clear
disp("The Output for Gauss Elimination")
x=[1 -1 2;1 2 3  ; 3 -4 -5 ]
y=[3; 5 ;-13]
c=[x y]
disp(c)
disp("")
n=length(y)
for i =1:n-1 //This Repsent are column in matrix of c
    for j =i+1:n //This reprsenyt row im Matrix of c
        m=c(j,i)/c(i,i)
        c(j,:)=c(j,:)- (c(i,:)*m)
     end
end
disp(c)
xi=c(3,4)/c(3,3)// Basically calculate Value of x
yi=(c(2,4)-(c(3,2)*xi))/c(2,2)
zi = (c(1,4) - c(1,3)*xi - c(1,2)*yi) / c(1,1);
printf("\n")
printf("The value of x For given equation is %f"+"\n",xi)
printf("The value of y For given equation is %f"+"\n",yi)
printf("The value of z For given equation is %f"+"\n",zi)

