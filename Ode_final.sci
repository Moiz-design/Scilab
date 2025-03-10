clf 
clc
clear
function dYdt = system(t, Y, k1, k2,k3)
    // Unpack the variables
    y = Y(1);
    Cb = Y(2);
    zp = Y(3);
    kp=Y(4);
    
    // Define the derivatives
    dydt = -k1 * y;           // dy/dt = -k1 * y
    dCbdt = k1 * y - k2 * Cb; // dCb/dt = k1 * y - k2 * Cb
    dzpdt = k2 * Cb;          // dzp/dt = k2 * Cb
    dkpdt=k3*Cb
    // Return the derivatives as a column vector
    dYdt = [dydt; dCbdt; dzpdt;dkpdt];
endfunction

// Parameters
k1 = 1;
k2 = 0.5;
k3=.6// Initial conditions
y0 = 5;
Cb0 = 0;
zp0 = 0;
kp0=0
Y0 = [y0; Cb0; zp0;kp0]; // Pack initial conditions into a vector

// Time vector
t = 0:0.01:20
; // Time from 0 to 10 with a step of 0.1
t0=0
// Solve the system of ODEs
Y = ode(Y0, t0, t, list(system, k1, k2,k3));

// Extract the results
y = Y(1, :);
Cb = Y(2, :);
zp = Y(3, :);
kp=Y(4,:);
// Plot the results
plot(t, y, "k", "linewidth", 2, "label", "y");
plot(t, Cb, "r", "linewidth", 2, "label", "Cb");
plot(t, zp, "m", "linewidth", 2, "label", "zp");
plot(t,kp,"b","label","kp")
xlabel("Time");
ylabel("Concentration");
legend("y", "Cb", "zp");
title("Simultaneous First-Order ODEs");
