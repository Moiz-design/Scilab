// Clear console and variables
clear;
clc;
// Input number of data points
n = input("Enter the number of data points: ");
y_matrix = []; // Initialize array to store y values
// Input y values
for i = 1:n
    yi = input("Enter value of y: ");
    y_matrix = [y_matrix yi];
end
// Input x values
x_matrix = [];
for i = 1:n
    xi = input("Enter value of x: ");
    x_matrix = [x_matrix xi];
end

// Input the value of x for which y is required
x = input("Enter the value of x for which you are finding the value of y: ");

// Compute step size
h = x_matrix(2) - x_matrix(1); // Assuming equally spaced x values

// Initialize forward difference table
T = zeros(n, n);//This create zero  matrix  of n rows and r column
T(:, 1) = y_matrix'; // First column is y values

// Fill the forward difference table (forward differences)
for i = 2:n
    for j = 1:(n - i + 1)// n-I+1 is done after every column deltany decrease by 1 so due to this we use n-i but here i starts from 2 due to to this we have to add 1
        T(j, i) = T(j + 1, i - 1) - T(j, i - 1);//deltayi+1 - delta(yi)
    end
end
// Display forward difference table
disp("Forward Difference Table:");
disp(T);
// Calculate u and initialize interpolation
u = (x - x_matrix(1)) / h; // Formula for u
q = u;
yi = y_matrix(1); // Start with the first value of y

// Apply Newton's Forward Difference Formula
for j = 1:n-1
    yi = yi + (q * T(1, j + 1)) / factorial(j);
    q = q * (u - j); // Update q for next term
end

// Display result
disp("The value of y at x = " + string(x) + " is:");
disp(yi);

