w = 10;
Ts = 0:0.1:0.3;

legendLabels = cell(1, length(Ts));
hold on;

for i = 1:length(Ts);
    T = Ts(i);
    h = tf([w^2], [T 1 2*w w^2]);
    xlim([0 4])
    ylim([0 2])
    step(h)
    legendLabels{i} = ['T = ' num2str(T)];
end
legend(legendLabels)
hold off;

saveas(gcf, "../pdf/figures/oppg2_respons.png")