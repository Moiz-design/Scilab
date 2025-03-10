clc
clear
x=[12 3 -5;1 5 3  ; 3 7 13 ]
y=[1; 28 ;76]
c=[x y]
n=length(y);

for j =1:n
    c(j,:)=c(j,:)/c(j,j);
    printf("\n")
    disp(j);
    for i =1:n 
        if i~=j
            m=c(i,j)
             c(i,:)=c(i,:)- (c(j,:)*m);
             end
             end
end
disp(c)
for i = 1:n
    disp("Value of x"+string(i)+" is "+ string(c(i,4)))
end
