function [C_A] = X(Zeit, V_IAS, m_fl_A, m_fl_E)
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

V_IAS = 0.514444*V_IAS;

V_TAS_A = sqrt(V_IAS^2*Rho_0/Rho_real_A);
V_TAS_E = sqrt(V_IAS^2*Rho_0/Rho_real_E);

wg = 1/3.281*1000/Zeit;

gamma_A = asin(wg/V_TAS_A);
gamma_E = asin(wg/V_TAS_E);

A_A = cos(gamma_A)*9.81*m_fl_A;
A_E = cos(gamma_E)*9.81*m_fl_E;

C_A_A = A_A/(Rho_real_A/2*S*V_TAS_A^2);
C_A_E = A_E/(Rho_real_E/2*S*V_TAS_E^2);

C_A = (C_A_A+C_A_E)/2;


end
