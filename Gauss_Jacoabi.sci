
clc;
clear;

// Initial guesses
x_old = 0;
y_old = 0;
z_old = 0;


// Set the tolerance and maximum iterations
tolerance = 0.001;
max_iter = 1000;

// Initialize the old values for checking convergence

// Perform Gauss-Jacobi iteration
for i = 1:max_iter
    // Calculate the new values for x, y, and z based on the old values
    x_new = (225 - 6*y_old - z_old)/27;
    y_new = (72 - 2*x_old - z_old) / 15;
    z_new = (110 - x_old - y_old) / 54;
    
    // Check convergence
    if abs(x_new - x_old) < tolerance && abs(y_new - y_old) < tolerance && abs(z_new - z_old) < tolerance
        disp("Solution of the equation is:");
        disp("x = " + string(x_new));
        disp("y = " + string(y_new));
        disp("z = " + string(z_new));
        disp("Number of iterations: " + string(i));
        break;
    end
    
    // Update the old values for the next iteration
    x_old = x_new;
    y_old = y_new;
    z_old = z_new;
end
