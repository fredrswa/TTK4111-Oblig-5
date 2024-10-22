g = 10;
l = 0.3;
M = 2;
J = 0.1;

alpha = 3;
circle = 0;
p_ref = 10;
h_ref = 10;
f_theta  = 100/alpha;
k_theta_p = 100/alpha;
k_theta_d = 20/alpha;

k_p_p = 1/160;
k_p_d = 1/20;

k_h_d = 6*2;
k_h_p = 11*2;
k_h_i = 6*2;


hold on;
xlim([0 40])
ylim([0 40])
stopTime = 40;
simout = sim("drone.slx")

h = simout.h;
p = simout.p;
h_r = simout.h_ref;
p_r = simout.p_ref;

plot(p, h)
plot(p_r,h_r)
saveas(gcf, "../pdf/figures/oppg3_drone.png")