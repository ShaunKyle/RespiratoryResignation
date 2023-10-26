function varargout= pneuma_variables


assignin('base','t_start',0);
assignin('base','t_start_new',0);

assignin('base','t_end',10*20);%3600
assignin('base','t_end_new',10*20);%3600

assignin('base','time_step',0.05);
assignin('base','time_step_new',0.01);%0.02

assignin('base','Td',10);
assignin('base','Td_new',10);

assignin('base','t_dur_save',0);
assignin('base','t_dur_save_new',evalin('base','t_end_new-Td_new'));

% added by Limei on April 14, 2010
% for saving data with different sample time (-1 for default)
assignin('base','sampletime', 0.1); 
assignin('base','DAY',7);%save data segment
%NOted and removed by Limei on Sep 26,2008
% %create variables for save segments storage
% assignin('base','first_time',1);
% assignin('base','Gppl_abp',1);
% assignin('base','first_time_threshold', 0.5);
% 
% assignin('base','saved_time_span_save',0);
% 
%NOted and emoved by Limei on Sep 26,2008
% assignin('base','ftas_storage',0);
% assignin('base','ftas_storage_save',0);
% 
% assignin('base','ftbs_storage',0);
% assignin('base','ftbs_storage_save',0);
% 
% assignin('base','ftp_storage',0);
% assignin('base','ftp_storage_save',0);
% 
% assignin('base','PACO2_storage',0);
% assignin('base','PACO2_storage_save',0);
% 
% assignin('base','PAO2_storage',0);
% assignin('base','PAO2_storage_save',0);
% 
% assignin('base','SAO2_storage',0);
% assignin('base','SAO2_storage_save',0);
% 
% assignin('base','Nt_storage',0);
% assignin('base','Nt_storage_save',0);

% parameters for CNS response added by Limei in April 08
%sa for sympathetic activity on peripheral resistance
%sp for sympathetic activity on veins
%sb for sympathetic activity on heart
assignin('base','Xsa',6); 
assignin('base','Xsp',6);
assignin('base','Xsb',53*0.4);%53/2 %53
assignin('base','Xsamin',7.33); 
assignin('base','Xspmin',7.33);
assignin('base','Xsbmin',-49.38);
assignin('base','gcc_sa',1.5);
assignin('base','gcc_sp',0.5);%0 change for hypoxia in Oct 08
assignin('base','gcc_sb',1);
assignin('base','PaCO2_n',40);
assignin('base','tao_cc',20);
assignin('base','tao_isc',30);
assignin('base','theta_sa_n',13.32);
assignin('base','theta_sp_n',13.32);
assignin('base','theta_sb_n',3.6);
assignin('base','theta_para_n',-0.68);
assignin('base','hatPO2_sa',30);
assignin('base','hatPO2_sp',30);
assignin('base','hatPO2_sb',45);
assignin('base','k_isc_sa',2);
assignin('base','k_isc_sp',2);
assignin('base','k_isc_sb',4);%6*2%6

%Carotid Baroreceptors (Afferent Pathway)
assignin('base','Pn',92);%90
assignin('base','k_cs',11.758);
assignin('base','Pn_sleep',0);%92*.2
assignin('base','k_cs_sleep',0);%11.758*0.2
assignin('base','fcs_min',2.52);
assignin('base','fcs_max',47.78);
%Alpha Sympathetic Activity (Efferent pathway)
assignin('base','k_s',0.0675);%0.07
assignin('base','fs_zero',16.11);
assignin('base','fs_inf',2.10);
%para-sympathetic activity (Vagal Efferent pathway)
assignin('base','fcs_zero',25);
assignin('base','k_p',7.06);
assignin('base','fp_zero',3.2);
assignin('base','fp_inf',6.3);

% % assignin('base','HP_basal',0.58);

assignin('base','Arousal_CardIC',0);

assignin('base','ftas_blocker',0);
assignin('base','ftbs_blocker',0);
assignin('base','ftp_blocker',0);

assignin('base','ftbs_delaytime',2.5); %2
assignin('base','ftbsIC',3.8576);
assignin('base','ftbs_min',2.66);%0.1
assignin('base','tau_bs',1.5);%11
assignin('base','delta_HPbsIC',-0.0159);

assignin('base','ftp_delaytime',0.1);%0.2%0.25
assignin('base','ftpIC',4.2748);
assignin('base','tau_p',0.02);%1.5 %0.8
assignin('base','delta_HPpIC',0.2209);

assignin('base','ftas_delaytime',5);%2%4
assignin('base','ftasIC',34.7927);
assignin('base','ftas_min',2.66);%0.1
assignin('base','tau_tas',2);%6%15
assignin('base','alpha_TPRIC',0.0351);

assignin('base','VRIC',-1.4559);

assignin('base','HC_delay',3);
assignin('base','HCIC',0);
assignin('base','Ghc',0.45);
assignin('base','tau_hc',10);

assignin('base','ABPIC',92.3678);
assignin('base','ABP_change',0);

assignin('base','Gls',23.29);
assignin('base','tau_ls',2);
assignin('base','flsIC',4.4492);

assignin('base','tau_chemo',2);
assignin('base','fchemoIC',8.0807);
assignin('base','fchemo_max',12.3);
assignin('base','fchemo_min',0.835);
assignin('base','kchemo',29.27);
assignin('base','PaO2_chemo_n',45);
assignin('base','PaCO2_chemo_n',40);
assignin('base','f_chemo_co2_n',1.4);
assignin('base','K_H',3);


assignin('base','Hypercapnia_activation',0);
assignin('base','Isocapnia_activation',0);
assignin('base','PIO2',150);
% assignin('base','PIO2_pulse_change',0);
assignin('base','PIO2_change',-90);
assignin('base','t_O2_start',0);
assignin('base','t_O2_duration',0);

assignin('base','PICO2',0);
% assignin('base','PICO2_pulse_change',0);
assignin('base','PICO2_change',40);
assignin('base','t_CO2_start',0);
assignin('base','t_CO2_duration',0);
assignin('base','Inhale',1);
assignin('base','TImean',1.5);
assignin('base','TTmean',4.0);
assignin('base','T1',1);
assignin('base','T2',2);

assignin('base','PAO2IC',102.5153);
assignin('base','PACO2IC',40.9432);

assignin('base','PAO2_delayIC',103.1223);
assignin('base','PACO2_delayIC',40.4448);
assignin('base','SAO2_delayIC',98.9196);

assignin('base','PaCO2firstIC',-0.2465);
assignin('base','PaCO2secondIC',40.3928);
assignin('base','PaO2firstIC',0.3557);
assignin('base','PaO2secondIC',103.1435);

assignin('base','Dead1O2IC',104.3637);
assignin('base','Dead2O2IC',104.2258);
assignin('base','Dead3O2IC',104.0505);
assignin('base','Dead4O2IC',103.8005);
assignin('base','Dead5O2IC',103.3579);

assignin('base','Dead1CO2IC',39.5616);
assignin('base','Dead2CO2IC',39.6736);
assignin('base','Dead3CO2IC',39.8127);
assignin('base','Dead4CO2IC',40.0061);
assignin('base','Dead5CO2IC',40.3359);

assignin('base','CvCO2IC',0.5247);
assignin('base','CvO2IC',0.1639);
assignin('base','PbCO2IC',48.5383);

assignin('base','VLCO2',3);
assignin('base','VLO2',2.5);
assignin('base','VTCO2',15);
assignin('base','VTO2',6);

assignin('base','Vdead1',0.03);
assignin('base','Vdead2',0.03);
assignin('base','Vdead3',0.03);
assignin('base','Vdead4',0.03);
assignin('base','Vdead5',0.03);

assignin('base','MRCO2',0.0033);
assignin('base','MRO2',0.0038);
assignin('base','MRbCO2',0.0517);

assignin('base','Ic',45);
assignin('base','IpCO2',38);
assignin('base','IpO2',102.4);
assignin('base','Ivent',45/60);

assignin('base','SbCO2',0.36);
assignin('base','SCO2',0.0043);
assignin('base','h',0.0183);
assignin('base','QdBo',0.8333);

assignin('base','DtotalIC',0.32);
assignin('base','VtIC',0.0);
assignin('base','FlowIC',0.0);
assignin('base','Pt_frcIC1',0.0);
assignin('base','Pt_frcIC2',0.0);
assignin('base','kaw1',1.85);
assignin('base','kaw2',0.43);
assignin('base','E_CW',5);
assignin('base','E_L',5);
assignin('base','RC',0.06);

assignin('base','R_AW',1.27);
assignin('base','R_LAW',0.8*1.27);
assignin('base','R_CW',1.03);
assignin('base','R_L',1.69);

assignin('base','VC',5);

% CV Dissociation
assignin('base','s',0);
assignin('base','a1',0.3836);
assignin('base','a2',1.819);
assignin('base','alpha1',0.03198);%0.02598
assignin('base','alpha2',0.05591);
assignin('base','K1',13);
assignin('base','K2',194.4);
assignin('base','beta1',0.008275);%0.012275
assignin('base','beta2',0.03255);
assignin('base','C1',9);
assignin('base','C2',87);
assignin('base','lambda',863);
assignin('base','Z',0.0227);

assignin('base','chemo_delayIC',0);

% assignin('base','Gas',0.695/2);% 0.695/1.45%0.695+1.94+2.47%0.02%0.505
assignin('base','Gas_Rsp', 0.695);
assignin('base','Gas_Rep', 1.94);
assignin('base','Gas_Rmp', 2.47);
assignin('base','Gas_sleep',.3);%0.02
% assignin('base','a_blocker',0);
assignin('base','Gbs',-0.13); %0.13%0.067
assignin('base','Gbs_sleep',0.2);%0.6
% assignin('base','b_blocker',0);
assignin('base','Gpara',0.09);%;0.06
assignin('base','Gpara_sleep',0.2); %0.6
% assignin('base','p_blocker',0);

assignin('base','G_CRSA',0.4);%0.6%2%0 %2.0
% assignin('base','CRSA_blocker',0);
assignin('base','G_chemo_para',0.03);%0.2);%0.01
assignin('base','G_chemo_bsymp',2.8);%1);%0.006
assignin('base','G_chemo_asymp',4.0);%5.0);
% assignin('base','chemo_blocker',0);
assignin('base','G_lung_para',0.24);%0.103);%0.4
assignin('base','G_lung_bsymp',0.24);%0);%0.25
assignin('base','G_lung_asymp',0.34);
% assignin('base','Lung_blocker',0);
% assignin('base','G_offset_para', 1);
% assignin('base','G_offset_bsymp',1);
% assignin('base','G_offset_asymp1',1);
% assignin('base','G_offset_asymp2',1);
assignin('base','G_RespMus',20);
% assignin('base','RespMus_blocker',0);
% Neuromuscular blockade
assignin('base','co_partial',1);
assignin('base','co_blocker',0);

assignin('base','Gc',0.0750);
% assignin('base','Gc_blocker',0);
assignin('base','Gp',0.0063);
% assignin('base','Gp_blocker',0);
assignin('base','T_p_delay_const',0.588);

assignin('base','S_UA',0.05);
assignin('base','UA_blocker',0);
assignin('base','t_start_UA',0);
assignin('base','t_end_UA',0);
assignin('base','Arousal_UAIC',0);

assignin('base','S_wake',0.3);
% assignin('base','Sleep_start',200);
assignin('base','t_sleep_start',1000);
assignin('base','Sleep',0);
assignin('base','Circadian_High',0.90);
assignin('base','Circadian_Low',0.15);
assignin('base','Circadian_Period',24);
assignin('base','Circadian_Phase',1.03*pi);
assignin('base','Init_Proc_S',0.90);

assignin('base','Mueller_activation',0);
assignin('base','t_Mueller_start',153);%0
assignin('base','t_Mueller_duration',18);%20
assignin('base','t_Mueller_insp',18);

assignin('base','Valsalva_activation',0);
assignin('base','t_valsalva_start',80.17);%
assignin('base','t_valsalva_duration',19);%16
assignin('base','t_valsalva_insp',4);%2

assignin('base','FVC_activation',0);%0
assignin('base','t_FVC_start',117.8245);
assignin('base','t_FVC_duration',12);
assignin('base','t_FVC_insp',3);%1.5
% assignin('base','FVC_activation',1);
% assignin('base','t_FVC_start',16);
% assignin('base','t_FVC_duration',3.5);
% assignin('base','t_FVC_insp',1.5);

assignin('base','CPAP_activation',0);
assignin('base','CPAP_pressure',10);
assignin('base','t_CPAP_start',0);
assignin('base','t_CPAP_duration',0);

assignin('base','Mech_Vent_activation',0);
assignin('base','Mech_Vent_pressure',10);
assignin('base','t_Mech_Vent_start',0);
assignin('base','t_Mech_Vent_duration',0);

assignin('base','resp_period_end',0);
assignin('base','resp_period_start',0);

assignin('base','rc',0.2/60);
assignin('base','fc',0.4/60);
assignin('base','gc',0.008/60);
assignin('base','SWAo',0.007);

%%%%constant parameters additional controls jan/2005%%%%%%%%%%
%assignin('base','fas_min',0);
%assignin('base','tau_as',0);
%assignin('base','fas_delaytime',0);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% % fc=0.4/60;
% % gc=0.008/60;
% % SWAo=0.007;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assign Cardiopulmonary Parameters


% % assignin('base','A1_v_left',0.9556);
assignin('base','A1_v_right',0.9556);
% % assignin('base','A2_v_left',0.6249);
assignin('base','A2_v_right',0.6249);
% % assignin('base','A3_v_left',0.018);
% % assignin('base','A3_v_right',0.018);

assignin('base','A_a_left',0.9556);
assignin('base','A_a_right',0.9);

assignin('base','Activation_Offset',0.4);


assignin('base','B1_v_left',255.4);
assignin('base','B1_v_right',300);
assignin('base','B2_v_left',225.3);
assignin('base','B2_v_right',225.3);
assignin('base','B3_v_left',4225);
% % assignin('base','B3_v_right',4225);

% % assignin('base','B_a_left',255.4);
% % assignin('base','B_a_right',0.18);


% % assignin('base','C1',9);
% % assignin('base','C1_v_left',0.306);
% % assignin('base','C1_v_right',0.306);
% % assignin('base','C2',87);
% % assignin('base','C2_v_left',0.2026);
% % assignin('base','C2_v_right',0.2026);
% % assignin('base','C3_v_left',0.2491);
% % assignin('base','C3_v_right',0.2491);

% % assignin('base','C_a_left',0.306);
% % assignin('base','C_a_right',0.065);

assignin('base','C_ao_d',0.1);
assignin('base','C_ao_p',0.01);

% % assignin('base','C_la',0.0001);
% % assignin('base','C_lv',0.0001);

assignin('base','C_pa',0.015);
assignin('base','C_pad',0.07);
assignin('base','C_pap',0.1);

assignin('base','C_pc',2);
% % assignin('base','C_pc_lin',1.45);

assignin('base','C_pv',0.1);

% % assignin('base','C_ra',0.0002);
% % assignin('base','C_rv',0.0002);

assignin('base','C_sa_d',0.01);
assignin('base','C_sa_p',0.06);

assignin('base','C_sc',0.2);
assignin('base','C_sv',1.5);

% % assignin('base','C_vc',1.5);
% % 
% % assignin('base','E_end_systolic_linear',240);
% % assignin('base','E_end_systolic_liner_lv',32);

assignin('base','E_es_a_left',0.2);
assignin('base','E_es_a_right',0.2);
assignin('base','E_es_v_left',0.75);%4.3
assignin('base','E_es_v_right',0.35);

assignin('base','K_a',0.1);

assignin('base','L_ao_d',0);
assignin('base','L_ao_p',0);
assignin('base','L_pa',0);

assignin('base','Lambda_a_left',0.025);
assignin('base','Lambda_a_right',0.025);

assignin('base','Lambda_v_left',0.015);
assignin('base','Lambda_v_right',0.015);

assignin('base','P0_a_left',0.5);%0
assignin('base','P0_a_right',0.5);%0
assignin('base','P0_v_left',1.7);%0
assignin('base','P0_v_right',0.67);%0

assignin('base','PA_d',0);
assignin('base','PA_p',0);

assignin('base','P_ao_d_0',80);
assignin('base','P_ao_p_0',100.3);

assignin('base','P_aorta_initial',110);

assignin('base','P_pul_art',8);

assignin('base','P_sa_d_0',50);
assignin('base','P_sa_p_0',70);

assignin('base','P_sc_0',18.6);
assignin('base','P_sv_0',6.4);

assignin('base','P_vc_0',4.3);

assignin('base','Q0_pap',0);

assignin('base','Q_ao_d_0',-200);
assignin('base','Q_ao_d_L_0',100);

assignin('base','Q_ao_p_0',-200);
assignin('base','Q_ao_p_L_0',100);

assignin('base','Q_aorta_initial',800);
assignin('base','Q_pul_art',100);

assignin('base','Q_sa_d_0',-600);
assignin('base','Q_sa_p_0',-300);

assignin('base','Q_sc_0',-400);
assignin('base','Q_sv_0',-400);

assignin('base','Q_vc_0',-100);

assignin('base','R_ao_d',0.1);
assignin('base','R_ao_p',0.6);

assignin('base','R_la',0.8);
% % assignin('base','R_la_lin',0.0008);

% % assignin('base','R_linear_vc',0.0001);

% % assignin('base','R_lsa',0.007);

assignin('base','R_lv',0.065);
% % assignin('base','R_lv_lin',0.06);

% % assignin('base','R_ma',0.0007);

assignin('base','R_pa',0.001);
assignin('base','R_pad',0.09);
assignin('base','R_pap',0.06);

assignin('base','R_pc',0.01);
assignin('base','R_ps',0.01);

% % assignin('base','R_psa',0.0007);

assignin('base','R_pv',0.007);

assignin('base','R_ra',0.08);
% % assignin('base','R_ra_lin',0.0008);

assignin('base','R_rv',0.07);
% % assignin('base','R_rv_lin',0.07);

assignin('base','R_sa',0.01);
assignin('base','R_sa_d',0.007);
assignin('base','R_sa_p',0.007);

assignin('base','R_sc',0.0036);
assignin('base','R_sv',0.002);

% % assignin('base','R_ta',0.0007);
assignin('base','R_ta_d',0.01);
assignin('base','R_ta_o',0.01);
assignin('base','R_tpa',0.05);


assignin('base','V0_a_left',20);
assignin('base','V0_a_right',20);

assignin('base','V0_la',90);
assignin('base','V0_lv',130);

assignin('base','V0_ra',90);
assignin('base','V0_rv',130);

assignin('base','V0_v_left',25);
assignin('base','V0_v_right',25);

assignin('base','V_d_a_left',20);
assignin('base','V_d_a_right',20);

assignin('base','V_d_v_left',40);%50
assignin('base','V_d_v_right',40);

assignin('base','HP_Basal',1);
assignin('base','HP_basal',0.58);%0.9%0.58%initx(7)

assignin('base','resp_period',0.22);

assignin('base','T_D',1539);
assignin('base','T_P',2879);
% % assignin('base','T_Vt',1933);

% % assignin('base','Conversion_Coefficient',6000);

% assignin('base','V_Tb',593);
% assignin('base','V_Vb',7.7);
% assignin('base','V_B',7.7);
assignin('base','V_b',7.7-1);



% assignin('base','F_B',12.5);
assignin('base','F_b',12.5);

assignin('base','a_min',1);

assignin('base','LA',3);
assignin('base','LV',0);

assignin('base','RA',0);
assignin('base','RV',0);
assignin('base','RC',0.06);


assignin('base','PA',0);
assignin('base','PV',0);
assignin('base','PC',0);

assignin('base','Q_VC',0);
assignin('base','CO_initial',0.18);





assignin('base','S1_F',0.00518);
assignin('base','S1_V',0.024);
% assignin('base','S1_V_T',1);
assignin('base','S2_F',0.0105);
assignin('base','S2_V',0.0367);
% assignin('base','S2_V_T',0.338);
% V_P =S1_V * (T_P-T_D) + V_b;
assignin('base','V_P',0.024 * (2879-1539) + 7.7-1);

% % assignin('base','Initial_Time',0);

% % assignin('base','PSD_Sampling_Interval',0);

%%%%%%%%%NEW PARAMETERS AS OF NOVEMBER 2004

assignin('base','Breathing_Period_Basal',4);
assignin('base','TPR_0',.49);%1%2.49

assignin('base','G_pleural',1);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%NEW PARAMETERS AS OF MARCH 2005
%%%%%%UPPER AIRWAY COMPARTMENT PARAMETERS%%%%%%%%%%%%%%%%%%%%%%%%%


assignin('base','C_ua_awake',0.0005*2);

assignin('base','b_ua',1);


assignin('base','R_trachea',0.1*1000000);
% assignin('base','P_ua_cutoff',-0.10);
assignin('base','P_0',-0.1);
assignin('base','K_ua',1);
assignin('base','A_0_ua',1);

assignin('base','S_UA',0.01);
assignin('base','Q_la',1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------------------------------------
% Compressible vena cava compliance parameters

assignin('base','C_vc_uncompressed',1.5);
assignin('base','S_vc',1);


%%%%%%%%%%%%%%%%New CV System Parameters%%%%%%%%%%%
%%%% ---Added by Limei Cheng on 8-8-2008 ----%%%%%% 
%%%%%%%%%%%%%%%%Begin%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Control Part    
    %Carotid sinus afferent pathway
    assignin('base','touz',6.37);
    assignin('base','toup',2.076);
    assignin('base','G_Emaxlv',0.475);
    assignin('base','Base_Emaxlv',2.392);
    % Initialize Effector Parameters
    %                                                     
    %                    Emaxlv Emaxrv Rsp  Rep  Vusv  Vuev      Ts   Tv  Vumv    Rmp
    %                      1     2     3     4     5     6       7     8    9      10
assignin('base','Gx',  [0.475 0.282  0.695 1.94 -265.4 -74.21 -0.13 0.09 -58.29  2.47]');
assignin('base','toux',[  8     8     2     2    20     20      2    1.5   20     2]');
%[  8     8     6     6    20     20      2    1.5   20     6]
assignin('base','Dx',   [  2     2     2     2    5      5       2    0.2   5      2]');
    % Initial conditions
assignin('base','initx',[2.392 1.412  2.49 1.655 1435.4 640.73  0.58   0  503.26 2.106]');

%%%Cardiovasular System
    % Initialize variables 
    %Compliance (ml/mmHg)
assignin('base','Csa',0.28);
assignin('base','Csp',2.05);
assignin('base','Cep',0.668);%1.67;
assignin('base','Cmp',0.525);
assignin('base','Cbp',0.358);
assignin('base','Chp',0.119);
assignin('base','Csv',61.11);
assignin('base','Cev',20);%50.0;
assignin('base','Cmv',15.71);
assignin('base','Cbv',10.71);
assignin('base','Chv',3.57);
assignin('base','Cpa',0.76);
assignin('base','Cpp',5.80);
assignin('base','Cpv',25.37);
    
    %Hydraulic Resistance (mmHg*s/ml)
assignin('base','Rsa',0.06);
 %  Rsp=3.307;
 %  Rep=3.52;%1.407;
assignin('base','Rmpn',4.48);
assignin('base','Rbpn',6.57);
assignin('base','Rhpn',19.71);
assignin('base','Rsv',0.038);
assignin('base','Rev',0.04);%0.016;
assignin('base','Rmv',0.05);
assignin('base','Rbv',0.075);
assignin('base','Rhv',0.224);
assignin('base','Rpa',0.023);
assignin('base','Rpp',0.0894);
assignin('base','Rpv',0.0056);    
    
    %Unstressed Volumn (ml)
assignin('base','Vusa',0);
assignin('base','Vusp',274.4);
assignin('base','Vuep',134.64);%336.6;
assignin('base','Vump',105.8);
assignin('base','Vubp',72.13);
assignin('base','Vuhp',24.0);
%   Vusv=1121;
%   Vuev=550;%1375;
%   Vumv=432.14;
assignin('base','Vubv',294.64);
assignin('base','Vuhv',98.21);
assignin('base','Vupa',0);
assignin('base','Vupp',123);
assignin('base','Vupv',120);
    
    %Inertance (mmHg*ml*s^(-2))    
assignin('base','Lsa',0.22e-3);
assignin('base','Lpa',0.18e-3);
    
    %Left Heart
assignin('base','Cla',19.23);
assignin('base','Vula',25);
assignin('base','Vulv',16.77);
assignin('base','Rla',25e-3);
assignin('base','KElv',0.014);
    
    %Emaxlv=2.95;
assignin('base','KRlv',3.75e-4);
assignin('base','P0lv',1.5);
    
    %Right Heart
assignin('base','Cra',31.25);
assignin('base','Vura',25);
assignin('base','Vurv',40.8);
assignin('base','Rra',2.5e-3);
assignin('base','KErv',0.011);
%   Emaxrv=1.75);
assignin('base','KRrv',1.4e-3);
assignin('base','P0rv',1.5);
    
    %Heart Beat
assignin('base','Tsys0',0.5);
assignin('base','ksys',0.075);
    
    %Total Amount of Blood
assignin('base','Vt',5300);
    
    % Vena Cava by Limei Cheng on July 28, 2008
assignin('base','D1',0.3855);% D1 =D2 + K2_vc*exp(V_vc_0/V_vc_min);
assignin('base','D2',-5.0);
assignin('base','K1_vc',0.15);
assignin('base','K2_vc',0.4);
assignin('base','Kr_vc',0.001);
assignin('base','R_vc_0',0.025);
assignin('base','V_vc_0',130);
assignin('base','V_vc_max',350);
assignin('base','V_vc_min',50);
    
    %Aorta by Limei Cheng on July 29, 2008
%     Caop = 1.6;
%     Caod = 0.2;
%     Raop = 0.005;
%     Raod = 0.015;
%     Laop = 0.0001226;
%     Laod = 0.00017;
%     Rtao = 0.06;
%     Rtaod = 0.0125;

%%%%%%%%%%%%%%%%END%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%New Blood Local Control Parameters%%%%%%%
%%%% ---Added by Limei Cheng on 8-8-2008 ----%%%%%% 
%%%%%%%%%%%%%%%%Begin%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

assignin('base','A',20.9);
assignin('base','B',92.8);
assignin('base','C',10570);
assignin('base','D',-5.251);

assignin('base','tau_O2',10);
assignin('base','tau_CO2',20);
assignin('base','tau_w',5);

assignin('base','Mb',0.7917);
assignin('base','Mm',0.86);
assignin('base','Mhn',0.4);

assignin('base','CvbO2_n',0.14);
assignin('base','CvmO2_n',0.155);
assignin('base','CvhO2_n',0.11);

assignin('base','GbO2',10);
assignin('base','GmO2',30);
assignin('base','GhO2',35);

assignin('base','KmCO2',142.8);
assignin('base','KhCO2',11.11);
assignin('base','Whn',12660);


%%%%%%%%%%%%%%%%%%END%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%Metabolic Control Parameters%%%%%%%%%%%%%%
%%%% ---Added by Limei Cheng on 11-10-2009 %%%%%%%% 
%%%%%%%%%%%%%%%%Begin%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Parameters from Pneuma
% Gas_sleep = 0.3;
assignin('base','ftas_r0', 2.10);%Hz
%%method 2 for deltaFtas in PNEUMA
assignin('base','k_isc_I',1);
assignin('base','tao_I', 30*60); %30 min
assignin('base','Ftas_I0',1);
% initial conditions for simulation
assignin('base','delay', 0); %3*60*60*1; % min->sec: initial delay time to make system steady
assignin('base','gain_E',100); %for Epi regulation gain 
%step func of Insulin clamps 
assignin('base','Ins_shutdown', 0); % 1 means enable the shut down of Insulin clamps
assignin('base','step_u1', 0/60);%6.25e3/60; %for 100 elevated %1e3/60; %for16  %2.5e3/60;%for 40 
% 10e3/60;%for 160microU/ml elevated %microMol/min ->microMol/sec
% assignin('base','meal',4/60); %8;%0; %mg/min -> mg/sec
assignin('base','breakfast',22/60); %18;%6/60;%(18/60+meal)/3;%
assignin('base','lunch',30/60); %26;%6/60/2;%(26/60+meal)/3/2;%
assignin('base','dinner', 24/60);%20;%6/60/3;%(20/60+meal)/3/2;%

%%Parameters for GIFFA minimal model
assignin('base','p1', 0.068/60);%Parker 0.068/60; %1/min ->1/sec
assignin('base','p2', 0.037/60);%Parker0.037/60; %1/min->1/sec
assignin('base','p3',0.000012/60);  %Parker0.000012/60;%1/min ->1/sec
assignin('base','p4', 1.3/60); %mL/(min*microU)->mL/(sec*microU)
    % added in Jan 21, 2009
    assignin('base','Gamma',0.038/60/60);%/60;%1.36e-3/60/60;%dl/mg/min/min
assignin('base','n', 0.142/60);%Parker0.142/60; %0.11/60 1/min->1/sec
assignin('base','p5', 0.000568); %1/mL
assignin('base','p6', 0.00006/60); %L/(min*micromol)->L/(sec*micromol)
assignin('base','p7', 0.03/60); %1/min->1/sec
assignin('base','p8', 4.5/60); %mL/(min*microU)->1/(sec*micromol)
assignin('base','k1', 0.02/60); %1/min->1/sec
assignin('base','k2', 0.03/60); %1/min->1/sec
assignin('base','pF2', 0.17/60); %1/min->1/sec
assignin('base','pF3', 0.00001/60); %1/min->1/sec

assignin('base','Gb',120.6);%125; %98; %mg/100mL %81; %for normal 
assignin('base','Fb', 380); %380*0.5; %340;%micromol/L%
assignin('base','VolG', 117);%100mL
assignin('base','VolF', 11.7); %L
assignin('base','Zb',0.5*380);%0.05*Fb;%0; %Fb;%0.5*Fb
% 0;%  %for diabetes %55;%normal 
assignin('base','Ib',  16.25);%15; %22; %dynamics around basal are satuarateda and disappeared %
assignin('base','Xb',  0.005*16.25);%0.005*Ib

%%%%%%%%%%%%%%%%%%%%%%%********************%%%%%%%%%%%%%%%%%%%%%%%%%
%%parameters for epinephrine model
assignin('base','Ce_0', 198*1e-6);%250*1e-6; %picomol=1e-6 micromol
assignin('base','tao_e', 30*60); %min->sec
% assignin('base','w_WR', 1100*1e-6); %picomol=1e-6 micromol

%Flux rate in heart
assignin('base','V_0_GLC_Heart', 0.088*1e3/60); %1mMol/min= 1000microMol/min->1microMol/sec
assignin('base','lamda_E_GLC_Heart', 3.0);
assignin('base','alpha_E_GLC_Heart', 1000);%*1e-6; %picomol=1e-6 micromol
assignin('base','V_0_GLY_Heart', 0.32*1e3/60);%->1microMol/sec
assignin('base','lamda_E_GLY_Heart', 0);
assignin('base','alpha_E_GLY_Heart', 0);%*1e-6; %picomol=1e-6 micromol
assignin('base','V_0_FFA_Heart', 0.28*1e3/60);%->1microMol/sec
assignin('base','lamda_E_FFA_Heart', 2.0); 
assignin('base','alpha_E_FFA_Heart', 447.2);%*1e-6; %picomol=1e-6 micromol
assignin('base','V_0_TGL_Heart', 0.008*1e3/60);%->1microMol/sec
assignin('base','lamda_E_TGL_Heart', 0.50); 
assignin('base','alpha_E_TGL_Heart', 1000);%*1e-6; %picomol=1e-6 micromol

%Flux rate in muscle
assignin('base','V_0_GLC_muscle', 0.398*1e3/60);%->1microMol/sec
assignin('base','lamda_E_GLC_muscle', 18);
assignin('base','alpha_E_GLC_muscle', 1000);%*1e-6; %picomol=1e-6 micromol
assignin('base','V_0_GLY_muscle', 1*1e3/60);%->1microMol/sec
assignin('base','lamda_E_GLY_muscle', 0.3);
assignin('base','alpha_E_GLY_muscle', 10);%*1e-6; %picomol=1e-6 micromol
assignin('base','V_0_FFA_muscle', 0.701*1e3/60);%->1microMol/sec
assignin('base','lamda_E_FFA_muscle', 9.0);
assignin('base','alpha_E_FFA_muscle', 447.2);%*1e-6; %picomol=1e-6 micromol
assignin('base','V_0_PYR_muscle', 0.08*1e3/60);%->1microMol/sec
assignin('base','lamda_E_PYR_muscle', 2);
assignin('base','alpha_E_PYR_muscle', 1000);%*1e-6; %picomol=1e-6 micromol
assignin('base','V_0_TGL_muscle', 0.26*1e3/60);%->1microMol/sec
assignin('base','lamda_E_TGL_muscle', 2.5);
assignin('base','alpha_E_TGL_muscle', 1000);%*1e-6; %picomol=1e-6 micromol
%Flux rate in GI
assignin('base','V_0_TGL_GI', 0.08*1e3/60);%->1microMol/sec
assignin('base','lamda_E_TGL_GI', 2); 
assignin('base','alpha_E_TGL_GI', 1000);%*1e-6; %picomol=1e-6 micromol
%Flux rate in adipose
assignin('base','V_0_TGL_adipose', 0.19*1e3/60);%->1microMol/sec
assignin('base','lamda_E_TGL_adipose', 2); 
assignin('base','alpha_E_TGL_adipose', 1000);%*1e-6; %picomol=1e-6 micromol
%%%%%%%%%%%%%%%%%%END%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%added on Jan 18,2011 by Limei
assignin('base','DietBlock',1);%1 means normal diet, 0 means no diet input at all
%added on March 21,2011 by Limei for Glucose Clamps
% assignin('base','p6',0.00006*0.25/60);%p6=0.00006*0.25/60;
% assignin('base','p1',0.068*1.75*1.25/60);%p1=0.068*1.75*1.25/60;
assignin('base','PF',3);%PF=3/60;%117*96*3;
assignin('base','Ginf',1);%Ginf=2;
assignin('base','SurfaceArea',1.9);%SurfaceArea=1.9%for male; %1.73;%for average
assignin('base','Gprim1',1.4/60);%Gprim1=1.4/60;%gain for 1st minute priming dose
assignin('base','Gprim2',0.7465/60);%Gprim2=0.85/60;%gains for 2nd-14th minute priming dose
assignin('base','Gprim3',0.9/60);%
assignin('base','In_gain',320/60);%In_gain=350/60;
assignin('base','Clamp_class',2);%ClampClassifier=1;%for Hyperglycemia
assignin('base','Iblock',0);%Iblock=0;
assignin('base','Gblock',0);%Gblock=0;
assignin('base','Gh',125);%h=125;
assignin('base','Gclamp',0);%Gclamp=125;

assignin('base','Pcrit',-29.6);
%added by Limei Cheng on Jun 19, 2011
assignin('base','Keg',0.04);
assignin('base','Kef',0.01);
assignin('base','k_isc_I',20);
assignin('base','Gb',124.8);
assignin('base','Ib',16.6);
assignin('base','Gas_sleepM',0.3);
%added by Limei Cheng on Feb. 18, 2012
assignin('base','GI_CTRL',2);%1 is for one time IVGTT started at the beginning;
                             %2 is for Glucose Clamps
assignin('base','IVGTT',0);
% added by Robert Nordon on 18th October 2020!
% mechanical ventilator default values
% neuromuscular block
 % Sedation during ventilation causes neuromuscular blockade
assignin('base','t_NM_block_start',0);
assignin('base','t_NM_block_duration',0);
assignin('base','NM_block_gain',1); % zero is no block, one is 100% block
% ventilator enabled control

assignin('base','Mech_Vent_pressure',10); % in cm water
% Mechanical ventilation 
assignin('base','t_Mech_Vent_start',0); % autonomous control
assignin('base','t_Mech_Vent_duration',0);
assignin('base','Ventilator_rate',12); % breaths per minute
% Pneumonia simulation
assignin('base','LungFunction',[0,1]); %100% lung function at start of simulation

