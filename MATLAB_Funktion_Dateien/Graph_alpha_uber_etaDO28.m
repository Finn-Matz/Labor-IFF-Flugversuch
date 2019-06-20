function plot1handle = y(Daten)

alpha = Daten(1,:);
eta = Daten(2,:);

%x=polyfit(eta,alpha,1);

%y=x(1,2)+x(1,1)*eta;

y=[-15,5];
t=[24.788,-3.297];

figure1handle = figure(1);
figure1handle.Color = [1,1,1];
axes1handle = axes;
plot1handle = plot(eta,alpha,'+');
hold on;
plot2handle = plot(y,t);
grid on;
ylabel(axes1handle,'\alpha [\circ]');
xlabel(axes1handle,'\eta [\circ]');
legend('Messpunkte','Regressionsgrade (\alpha=-1.4043+3.7239\eta)','Location','northeast');
%axis([0 0.11 0 1.5]);

%axes1handle.YTick = [0:0.1:0.8];


end
