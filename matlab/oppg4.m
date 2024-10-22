J = 0.1;
l = 0.3;

circle = 0;
p_ref = 100;
h_ref = 10;

A = [0 1; 0 0]
B = [0; l/J]
C = [1 0];
lambda1 = -5;
lambda2 = -5;
p1 = -lambda1;
p2 = -lambda2;
L = [p1+p2; p1*p2]
K_theta_p = 100/3
K_theta_d = 20/3
K = -1*[K_theta_p K_theta_d]
stopTime = 100
simout = sim("drone_observer.slx")
theta = simout.theta;
theta_hat = simout.theta_hat;
t = simout.tout;
hold on;
grid on;
xlabel("$t(s)$", "Interpreter","latex");
ylabel("$rad s^{-1}$","Interpreter","latex");
plot(t, theta);
plot(t, theta_hat);
legend("$\theta$","$\hat{\theta}$", "interpreter", "latex")
hold off;