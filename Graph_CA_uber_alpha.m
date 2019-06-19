function [plot1handle,x] = y(Daten)

alpha = Daten(1,:);
CA=[0.564955,0.713753,0.75833,0.93917,1.35667,0.43754,1.6475,0.40448]

x=polyfit(alpha,CA,1);

x_1 = [-2.8938,20];
y=[0,1.7674];

figure1handle = figure(1);
figure1handle.Color = [1,1,1];
axes1handle = axes;
plot1handle = plot(alpha,CA,'+');
hold on;
plot2handle = plot(x_1,y);
grid on;
ylabel(axes1handle,'C_A');
xlabel(axes1handle,'\alpha [\circ]');
legend('Messpunkte','Regression (C_A=0.0772\alpha+0.2234)','Location','northwest');
axis([-3 18 0 1.8]);

%axes1handle.YTick = [0:0.1:0.8];


end
