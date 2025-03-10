clc;
clear;

// Initial guesses
x = 0;
y = 0;
z = 0;

for i = 1:1000
    // Calculate the new values for x, y, and z based on previous values
    x_new = (85 + z - 6*y)/27;
    y_new = (72 - 2*z - 6*x_new) / 15;
    z_new = (110 - y_new - x_new) / 54;
    
    // Update the values for the next iteration
    x = x_new;
    y = y_new;
    z = z_new;
    
    // Check convergence for all variables (x, y, and z)
    if i > 1
        if abs(x_new - x) < 0.001 && abs(y_new - y) < 0.001 && abs(z_new - z) < 0.001
            disp("Solution of the equation is:");
            disp("The Value of x = " + string(x_new));
            disp("The Value of y = " + string(y_new));
            disp("The Value of z = " + string(z_new));
            disp("Number of iterations: " + string(i));
            break;  // Exit the loop once the solution is found
        end
    end
end


