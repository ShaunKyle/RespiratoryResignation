%Baroregulation
%%-Baroreceptor
Pn = 90;
k_cs = 11.758;  
fcs_min = 2.52;
fcs_max = 47.78;


%SA Node
HP_basal = 0.58;
%%-Sympathetic modulation
ftbs_delaytime = 2;
ftbsIC = 6.9054;  
ftbs_min = 0.1;
tau_bs = 11;
delta_HPbsIC = -0.0203;
%%-Parasympathetic modulation
ftp_delaytime = 0.25;
ftpIC= 3.7561;
tau_p = 0.8;  %
delta_HPpIC = 0.0927;

%Total Peripheral Resistance
TPR_0 = 1;
%%-TPR dynamic
fas_delaytime = 4;
fasIC = 6.2111;
fas_min = 0.1;
tau_as = 11;
alpha_TPRIC = 0.0204; 

%Stroke Volume / Circulatory Mechanics
%Venous Return
VR_delay = 2;
VRIC = -3.3995;
Gvr = 5; 
tau_vr = 30;  
VR_delayIC = -3.4841;
%Heart Contractility
HC_delay = 3;
HCIC = 5.4025e-088;
Ghc = 0.45;
tau_hc = 10;
HC_delayIC = 0;

%%-Circulatory Mechanics
R_TPR = 1200/1.333;
Cart = 0.001/1.333;
ABPIC = 96.7431;
