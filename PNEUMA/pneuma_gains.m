function varargout = pneuma_gains
% used for adjustable gains
% Last Modified by Limei Cheng within MatlabR2007b 14-April-2010 22:46:31
% --CV a_symp Gain------------------------------------------------------------
% added by Limei on April 14, 2010
% gain_file_name = ['PNEUMA/Cardiovascular System'...
%         'TPR Change/TPR change modulates by alpha-sympathetic/Gas'];
% set_param(gain_file_name,'Gain',num2str(1-evalin('base','a_blocker')));
gain_file_name = ['PNEUMA/Cardiovascular System/'...
    'TPR Change/Peri Circ Rsp/Gain_Rsp'];
set_param(gain_file_name,'Gain',num2str(evalin('base','Gas_Rsp')));
%added by Limei on April 14,2010
gain_file_name = ['PNEUMA/Cardiovascular System/'...
    'TPR Change/Peri Circ Rep/Gain_Rep'];
set_param(gain_file_name,'Gain',num2str(evalin('base','Gas_Rep')));

gain_file_name = ['PNEUMA/Cardiovascular System/'...
    'TPR Change/Peri Circ Rmp/Gain_Rmp'];
set_param(gain_file_name,'Gain',num2str(evalin('base','Gas_Rmp')));

% --CV b_symp Gain------------------------------------------------------------
% gain_file_name = ['PNEUMA/Cardiovascular System'...
%         '/SA-node/HP change modulated by beta-symp/b_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-evalin('base','b_blocker')));

gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/SA Node/Gain_HPbs'];
set_param(gain_file_name,'Gain',num2str(evalin('base','Gbs')));


% --CV parasymp Gain----------------------------------------------------------
% gain_file_name = ['PNEUMA/Cardiovascular System'...
%         '/SA-node/HP change modulated by parasymp/p_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-evalin('base','p_blocker')));

gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/SA Node/Gain_HPpara'];
set_param(gain_file_name,'Gain',num2str(evalin('base','Gpara')));

%added by Limei on April 15, 2010
% --CV heart contractility-------------------------------------------------
gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/Heart Emaxlv/Gain_Emaxlv'];
set_param(gain_file_name,'Gain',num2str(evalin('base','G_Emaxlv')));

gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/Heart Emaxlv/Basal_Emaxlv'];
set_param(gain_file_name,'Value',num2str(evalin('base','Base_Emaxlv')));

% --central RSA Gain-------------------------------------------------------
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/CRSA_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-evalin('base','CRSA_blocker')));

gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_CRSA'];
set_param(gain_file_name,'Gain',num2str(evalin('base','G_CRSA')));

% removed by Limei on April 14, 2010
% %Autonomic Control Blocker

% % --Alpha_Sympathetic Activity------------------------------------------
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/ftas_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-evalin('base','ftas_blocker')));
% % --Beta_Sympathetic Activity--
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/ftbs_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-evalin('base','ftbs_blocker')));
% % -- Parasympathetic Activity--
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/ftp_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-evalin('base','ftp_blocker')));



% --Chemoreflex------------------------------------------------------------
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/chemo_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-evalin('base','chemo_blocker')));

% --Chemoreflex Gain Parasympathetic--
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_para'];
set_param(gain_file_name,'Gain',num2str(evalin('base','G_chemo_para')));

% --Chemoreflex Gain Beta_Sympathetic--
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_bsymp'];
set_param(gain_file_name,'Gain',num2str(evalin('base','G_chemo_bsymp')));

% --Chemoreflex Gain Alpha_Sympathetic--
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_asymp'];
set_param(gain_file_name,'Gain',num2str(evalin('base','G_chemo_asymp')));


% --Lung Stretch Receptors Reflex------------------------------------------
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/Lung_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-evalin('base','Lung_blocker')));

% --Lung Reflex Gain Parasympathetic--
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_para'];
set_param(gain_file_name,'Gain',num2str(evalin('base','G_lung_para')));

% --Lung Reflex Gain Beta-Sympathetic--
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_bsymp'];
set_param(gain_file_name,'Gain',num2str(evalin('base','G_lung_bsymp')));

% --Lung Reflex Gain Alpha-Sympathetic--
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_asymp'];
set_param(gain_file_name,'Gain',num2str(evalin('base','G_lung_asymp')));

%Removed by Limei on April 16, 2010 
%%%Added by Limei on April 14, 2010 --------------------------------------- 
% % --Offset Gain Parasympathetic--
% gain_file_name =['PNEUMA/Central Neural Control/Autonomic Control/G_offset_para'];
% set_param(gain_file_name,'Gain',num2str(evalin('base','G_offset_para')));
% 
% % --Offset Gain Beta-Sympathetic--
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_offset_bsymp'];
% set_param(gain_file_name,'Gain',num2str(evalin('base','G_offset_bsymp')));
% 
% % --Offset Gain Alpha-Sympathetic--
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_offset_asymp1'];
% set_param(gain_file_name,'Gain',num2str(evalin('base','G_offset_asymp1')));
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_offset_asymp2'];
% set_param(gain_file_name,'Gain',num2str(evalin('base','G_offset_asymp2')));
% %%%%%%
% --Resp Muscle% Gain------------------------------------------------------
% gain_file_name = ['PNEUMA/Central Neural Control/RespMus_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-evalin('base','RespMus_blocker')));

gain_file_name = ['PNEUMA/Central Neural Control/G_RespMus'];
set_param(gain_file_name,'Gain',num2str(evalin('base','G_RespMus')));


% --Lung-Chemo Volume -----------------------------------------------------
gain_file_name = ['PNEUMA/Respiratory System/Gas '...
        'Exchange/Lung-Chemo Volume'];
set_param(gain_file_name,'Value',num2str(evalin('base','T_p_delay_const')));




% --Central Chemo Gain-----------------------------------------------------
% gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gc_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-evalin('base','Gc_blocker')));

gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gc'];
set_param(gain_file_name,'Gain',num2str(evalin('base','Gc')));


% --Peripheral Chemo Gain--------------------------------------------------
% gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gp_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-evalin('base','Gp_blocker')));

gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gp'];
set_param(gain_file_name,'Gain',num2str(evalin('base','Gp')));

% added by Limei on April 14, 2010
% --Pleural Pressure-------------------------------------------------------
gain_file_name = ['PNEUMA/Cardiovascular System/G_pleural'];
set_param(gain_file_name,'Gain',num2str(evalin('base','G_pleural')));

% --S_UA (Upper Airway Sensitivity)--
gain_file_name = ['PNEUMA/Respiratory System/Upper_Airway_Mechanism/Upper_Airway_Model/Upper_Airway_Compliance/S_UA'];
set_param(gain_file_name,'Value',num2str(evalin('base','S_UA')));

% Removed by Limei on April 23, 2010
% % --UA_blocker (Upper Airway Blockage)--
% gain_file_name = ['PNEUMA/Respiratory System/'...
%             'Modified Upper Airway Conductance/UA_blocker'];
% set_param(gain_file_name,'Gain',num2str(evalin('base','UA_blocker')));
% % set_param(gain_file_name,'Gain',num2str(1-evalin('base','UA_blocker'))); 
% --Sleep Mechanism--
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Sleep Enable'];
set_param(gain_file_name,'Value',num2str(evalin('base','Sleep')));
    
% --S_wake (Wakefulness Stimulus)--
gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/S_wake'];
set_param(gain_file_name,'Gain',num2str(evalin('base','S_wake')));

%set Circadian parameters
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian_High'];
set_param(gain_file_name,'Value',num2str(evalin('base','Circadian_High')));
   
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian_Low'];
set_param(gain_file_name,'Value',num2str(evalin('base','Circadian_Low')));
    
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(theta)'];
set_param(gain_file_name,'Phase',num2str(evalin('base','Circadian_Phase')));

gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(2*theta)'];
set_param(gain_file_name,'Phase',num2str(evalin('base','Circadian_Phase')));

gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(3*theta)'];
set_param(gain_file_name,'Phase',num2str(evalin('base','Circadian_Phase')));

gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(4*theta)'];
set_param(gain_file_name,'Phase',num2str(evalin('base','Circadian_Phase')));

gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(5*theta)'];
set_param(gain_file_name,'Phase',num2str(evalin('base','Circadian_Phase')));
  
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave'];
% % set_param(gain_file_name,'Phase',num2str(evalin('base','Circadian_Phase')));
% % 
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave1'];
% % set_param(gain_file_name,'Phase',num2str(evalin('base','Circadian_Phase')));
% % 
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave2'];
% % set_param(gain_file_name,'Phase',num2str(evalin('base','Circadian_Phase')));
% % 
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave3'];
% % set_param(gain_file_name,'Phase',num2str(evalin('base','Circadian_Phase')));
% % 
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave4'];
% % set_param(gain_file_name,'Phase',num2str(evalin('base','Circadian_Phase')));
    
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(theta)'];
set_param(gain_file_name,'Frequency',num2str((2*pi)/(evalin('base','Circadian_Period')*3600)));

gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(2*theta)'];
set_param(gain_file_name,'Frequency',num2str((2*pi*2)/(evalin('base','Circadian_Period')*3600)));

gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(3*theta)'];
set_param(gain_file_name,'Frequency',num2str((2*pi*3)/(evalin('base','Circadian_Period')*3600)));

gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(4*theta)'];
set_param(gain_file_name,'Frequency',num2str((2*pi*4)/(evalin('base','Circadian_Period')*3600)));

gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(5*theta)'];
set_param(gain_file_name,'Frequency',num2str((2*pi*5)/(evalin('base','Circadian_Period')*3600)));
    
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave'];
% % set_param(gain_file_name,'Frequency',num2str((2*pi)/(evalin('base','Circadian_Period')*3600)));
% % 
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave1'];
% % set_param(gain_file_name,'Frequency',num2str((2*pi*2)/(evalin('base','Circadian_Period')*3600)));
% % 
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave2'];
% % set_param(gain_file_name,'Frequency',num2str((2*pi*3)/(evalin('base','Circadian_Period')*3600)));
% % 
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave3'];
% % set_param(gain_file_name,'Frequency',num2str((2*pi*4)/(evalin('base','Circadian_Period')*3600)));
% % 
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave4'];
% % set_param(gain_file_name,'Frequency',num2str((2*pi*5)/(evalin('base','Circadian_Period')*3600)));
    
% --Init_Proc_S--
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Init_Proc_S'];
% % set_param(gain_file_name,'Value',num2str(evalin('base','Init_Proc_S')));
    
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Mem_Proc_S'];
% % set_param(gain_file_name,'X0',num2str(evalin('base','Init_Proc_S')));
    
% --PIO2_change--
% gain_file_name = ['PNEUMA/Respiratory System/Gas '...
%         'Exchange/DEAD SPACE/O2 DEAD SPACE/O2 Addition'];
% set_param(gain_file_name,'Value',num2str(evalin('base','PIO2_change')));
    
% --PICO2_change--
% gain_file_name = ['PNEUMA/Respiratory System/Gas '...
%         'Exchange/DEAD SPACE/CO2 DEAD SPACE/CO2 Addition'];
% set_param(gain_file_name,'Value',num2str(evalin('base','PICO2_change')));
    

% --Mueller Maneuver---------------------------------------------------
gain_file_name = ['PNEUMA/Central Neural Control/lung feedback/lung firing saturation'];
set_param(gain_file_name,'UpperLimit','100');
% --Mechanical Ventilation---------------------------------------------
% added by RobertNordon 18th October 2020
% Neuromuscular block
% gain_file_name = ['PNEUMA/Central Neural Control/Ventilator override'];
% set_param(gain_file_name,'NM_block_activation',num2str(evalin('base','NM_block_activation')));
% 
% gain_file_name = ['PNEUMA/Central Neural Control/Ventilator override'];
% set_param(gain_file_name,'t_NM_block_start',num2str(evalin('base','t_NM_block_start')));
% 
% gain_file_name = ['PNEUMA/Central Neural Control/Ventilator override'];
% set_param(gain_file_name,'t_NM_block_duration',num2str(evalin('base','t_NM_block_duration')));
% 
% gain_file_name = ['PNEUMA/Central Neural Control/Ventilator override'];
% set_param(gain_file_name,'NM_block_gain',num2str(evalin('base','NM_block_gain')));
% % Ventilator override
% gain_file_name = ['PNEUMA/Central Neural Control/VARIABLE RESPIRATORY RHYTHM1/Ventilator override'];
% set_param(gain_file_name,'Ventilator_rate',num2str(evalin('base','Ventilator_rate')));
% 
% gain_file_name = ['PNEUMA/Central Neural Control/VARIABLE RESPIRATORY RHYTHM1/Ventilator override'];
% set_param(gain_file_name,'Ventilator_rate',num2str(evalin('base','Ventilator_rate')));

   