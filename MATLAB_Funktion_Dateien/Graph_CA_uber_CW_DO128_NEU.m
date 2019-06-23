function [plot1handle,x] = y(d)
CA=[1.3517,0.8621,0.5965,0.4357]
CW=[0.1016,0.0735,0.0593,0.0577];

x=polyfit(CA,CW,2);

CA_R=0:0.001:2.5;
CW_R=x(1,3)+x(1,2)*CA_R+x(1,1)*CA_R.^2;

figure1handle = figure(1);
figure1handle.Color = [1,1,1];
axes1handle = axes;
plot1handle = plot(CW,CA,'+');
hold on;
plot2handle = plot(CW_R,CA_R);
grid on;
ylabel(axes1handle,'C_A');
xlabel(axes1handle,'C_W');
legend('Lilienthal-Polare-Messwerte','Quadratische-Polare (C_W=0.0503+0.0033C_A+0.0258C_A^2)','Location','northwest');
axis([0 0.2 0 2.5]);

%axes1handle.YTick = [0:0.1:0.8];


end
