function [plot1handle,x] = y(a)

W=[3738.51,3223.699,4353.567,3107.785,2978.01,3657.12,3747.999,6101.43];
V=[62,56,54,48,40,70,37,72];

x=polyfit(V,W,1);


figure1handle = figure(1);
figure1handle.Color = [1,1,1];
axes1handle = axes;
plot1handle = plot(V,W,'+');
hold on;
%plot2handle = plot(CA_R,CW_R);
grid on;
ylabel(axes1handle,'W [N]');
xlabel(axes1handle,'V [m/s]');
%legend(,'Location','northwest');
%axis([0 0.11 0 1.5]);

%axes1handle.YTick = [0:0.1:0.8];


end
