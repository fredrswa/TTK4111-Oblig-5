
w_0 = 10;
h = tf(w_0^2, [1 2*w_0 w_0^2])
hold on;
bode(h)
hold off;
saveas(gcf, "../pdf/figures/oppg2_bode.png")

