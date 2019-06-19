function [plot1handle,x] = y(d)
CA=[0.564955,0.713753,0.75833,0.93917,1.35667,0.43754,1.6475,0.40448]
CW=[0.0587,0.06398,0.09277,0.0818,0.11345,0.04538,0.1756,0.0713];

x=polyfit(CW,CA,2);

CA_R=0:0.001:0.2;
CW_R=x(1,3)+x(1,2)*CA_R+x(1,1)*CA_R.^2;

figure1handle = figure(1);
figure1handle.Color = [1,1,1];
axes1handle = axes;
plot1handle = plot(CW,CA,'+');
hold on;
plot2handle = plot(CA_R,CW_R);
grid on;
ylabel(axes1handle,'C_A');
xlabel(axes1handle,'C_W');
legend('Lilienthal-Polare-Messwerte','Quadratische-Polare (C_A=-0.2628+15.1238C_W-23.169C_W^2)','Location','northwest');
axis([0 0.2 0 2]);

%axes1handle.YTick = [0:0.1:0.8];


end
