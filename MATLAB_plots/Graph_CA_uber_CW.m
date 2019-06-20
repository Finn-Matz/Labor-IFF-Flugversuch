function plot1handle = y(p)
CA=[1.3517,0.8621,0.5965,0.4357];
CW=[0.1016,0.0735,0.0593,0.0577];

CA_R=0:0.01:1.5;
CW_R=0.0258+0.0033*CA_R+0.0503*CA_R.^2;

figure1handle = figure(1);
figure1handle.Color = [1,1,1];
axes1handle = axes;
plot1handle = plot(CW,CA,'+');
hold on;
plot2handle = plot(CW_R,CA_R);
grid on;
ylabel(axes1handle,'C_A');
xlabel(axes1handle,'C_W');
legend('Lilienthal-Polare-Messwerte','Quadratische-Polare','Location','northwest');
axis([0 0.11 0 1.5]);

%axes1handle.YTick = [0:0.1:0.8];


end
