hold on;
grid on;
t = simout.tout;
xlabel("$t(s)$", "Interpreter","latex");
ylabel("$pitch$", "Interpreter","latex")
plot(t, p)
saveas(gcf, "../pdf/figures/oppg3_pitch.png");