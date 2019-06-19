function plot1handle = y(Daten)

rho=[1950,1690,1330,1050,760,2400,700,2800];
V=[62,56,54,48,40,70,37,72];
alpha=Daten(1,:);

%x=polyfit(V,W,1);

hold on;
figure1handle = figure(1);
figure1handle.Color = [1,1,1];
axes1handle = axes;

yyaxis left
plot1handle=plot(alpha,V,'+');
ylabel('V [m/s]');
xlabel('\alpha [\circ]');
%legend('V_T_A_S','Location','northeast');



yyaxis right
plot1handle=plot(alpha,rho,'o');
ylabel('q [Pa]');
legend('V_T_A_S','Staudruck','Location','northeast');




%plot1handle = plotyy(alpha,V,alpha,rho);

%plot2handle = plot(CA_R,CW_R);
grid on;



%set(get(axes1handle(1),'Ylabel'),'V [m/s]');
%set(get(axes1handle(2),'Ylabel'),'q [Pa]');
%ylabel(axes1handle,'V');
%xlabel(axes1handle,'V [m/s]');
%legend(,'Location','northwest');
%axis([0 0.11 0 1.5]);

%axes1handle.YTick = [0:0.1:0.8];


end
