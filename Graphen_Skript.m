function [plot1handle,W_min,V_opt] = y(p)
W = [3055.7,3457.1,4011.8,5313.4];
V = [42.8187,53.5234,64.2281,74.9327];

M_schnitt = 4143.2;
CW0 = 0.0258;
CA_stern = 0.72;

W_min = 2*CW0/CA_stern*M_schnitt*9.81;

R = 287.058;
T_A = 285.15;
T_E = 286.15;
T_boden = 292.15;
S = 29;

Rho_0 = 1.225;                          %[gk/m^3]
p_A = (T_A/T_boden)^(1.4/0.4)*100400;
p_E = (T_E/T_boden)^(1.4/0.4)*100400;

Rho_real_A = p_A/(R*T_A);
Rho_real_E = p_E/(R*T_E);

Rho_real = (Rho_real_A+Rho_real_E)/2;

V_opt = sqrt(2*M_schnitt*9.81/(Rho_real*S)*1/CA_stern);

figure1handle = figure(1);
figure1handle.Color = [1,1,1];
axes1handle = axes;
plot1handle = plot(V,W);
grid on;
ylabel(axes1handle,'W');
xlabel(axes1handle,'V_T_A_S');
legend({'Widerstands-Polare'},'Location','northwest');
%axes1handle.YTick = [0:0.1:0.8];


end

