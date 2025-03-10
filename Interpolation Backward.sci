// Clear console and variables
clc;
clear;
// Input number of data points
n = input("Enter the number of data points: ");
x_matrix = zeros(1, n); // Initialize array to store x values
y_matrix = zeros(1, n); // Initialize array to store y values
// Input x values
disp("Enter the x values:");
for i = 1:n
    x_matrix(i) = input("Enter x(" + string(i) + "): ");
end
// Input y values
disp("Enter the corresponding y values:");
for i = 1:n
    y_matrix(i) = input("Enter y(" + string(i) + "): ");
end
// Input the point where interpolation is needed
x = input("Enter the point x where interpolation is needed: ");
h = x_matrix(2) - x_matrix(1); // Assuming uniform spacing between x values
x0 = x_matrix(n); // Last value of x (xn)
// Initialize backward difference table
T = zeros(n, n);
T(:, 1) = y_matrix'; // This states that first column of matrix T is equal to  transpose y_matrix
// Fill the backward difference table
for j = 2:n
    for i = n:-1:j
        T(i, j) = T(i, j-1) - T(i-1, j-1);
    end
end
// Display backward difference table
disp("Backward Difference Table:");
disp(T);
// Calculate u and initialize interpolation
u = (x - x0) / h; // Calculate u for the interpolation formula
q = u; // Initialize q as u
yi = y_matrix(n); // Start with the last value of y

// Apply Newton's Backward Difference Formula
for j = 1:n-1
    yi = yi + (q * T(n, j+1)) / factorial(j); // Update the interpolation result
    q = q * (u + j); // Update q for the next iteration
end

// Display the result
disp("The estimated value of y at x = " + string(x) + " is:");
disp(yi);
