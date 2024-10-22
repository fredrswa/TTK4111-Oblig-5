g = 10;
l = 0.3;
M = 2;
J = 0.1;

simout = sim("oppg1_sim.slx")

G_p = simout.g_p;
G_h = simout.g_h;
step = simout.step;
time = simout.tout;
hold on; grid on;
xlabel("Time (s)")
ylabel("Respons")
xlim( [0 5] )
ylim( [0 15])
plot(time, G_p)
plot(time, G_h)
plot(time, step)
legend("G_p", "G_h", "step");
hold off;
saveas(gcf, "../pdf/figures/oppg1_respons.png")

alfa = l/J;
f = 100/alfa
k_d = 20/alfa
k_p = 100/alfa