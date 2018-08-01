function plotH(f, H)
%% Plot data
if (max(f) > 24)
    f = f*1e-3; % Convert to kHz
end
figure(1);
ax(1) = subplot(2, 1, 1);
hold on;
plot(f, db(abs(H)), 'linew', 2);
set(gca, 'xscale', 'log', 'XTick',[0.25, 0.5, 1, 2, 4, 8, 16]);
ylabel({'Transfer Function', '(dB re: reference)'}, 'FontSize', 14);
ax(2) = subplot(2, 1, 2);
hold on;
plot(f, unwrap(angle(H)), 'linew', 2);
xlabel('Frequency (Hz)', 'FontSize', 14);
ylabel('Phase (rad)', 'FontSize', 14);
set(gca, 'xscale', 'log', 'XTick',[0.25, 0.5, 1, 2, 4, 8, 16]);
linkaxes(ax, 'x');
xlim([0.25, 20]);