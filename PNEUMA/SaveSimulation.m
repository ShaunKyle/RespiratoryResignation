function SaveSimulation(Patient)
%% Save the patient's simulation
%CONTROLLER
datafilename='CONTROLLER';
variables={'Arterial Blood Pressure' 'Oxygen saturation' 'Tidal volume' 'Breath CO2' ...
    'Inspiratory oxygen' 'Neuromuscular blockade' 'Mechanical ventilation rate' ...
    'Mechanical ventilation pressure'};
units={'mmHg' '%' 'L' 'Torr' 'Torr' 'on/off' 'breaths/min' 'cm H2O'};
SaveSimulationSystem(Patient,datafilename,variables,units);

%AutonomicCtrl
datafilename='AutonomicCtrl';
variables={'ftas_r' 'ftas_v' 'ftbs' 'ftp'};
units={'spikes/s' 'spikes/s' 'spikes/s' 'spikes/s' };
SaveSimulationSystem(Patient,datafilename,variables,units);
%BreathingPeriod
datafilename='BreathingPeriod';
variables={'Breath' 'Breath rate' 'Variable Breathing Period'};
units={'' 'beaths/s' 'seconds'};
SaveSimulationSystem(Patient,datafilename,variables,units);
%CARDIO
datafilename='CARDIO';
variables={'Heart Period HP' 'Stroke Volume SV' 'Cardiac Output CO' 'Total peripherial resistance TPR'...
    'Arterial Blood Pressure ABP'};
units={'seconds' 'ml' 'litres/min' 'mmHg.sec/ml' 'mmHg'};
SaveSimulationSystem(Patient,datafilename,variables,units);
%CARDIORESPIRATORY
datafilename='CARDIORESPIRATORY';
variables={'State Drive SI' 'Heart Rate HR' 'Arterial Blood Pressure ABP' 'Pleural pressure Ppl'...
    'CO2 alveolar partial pressure PaCO2' 'Oxygen saturation SaO2' 'Breathing Frequency BF' 'Tidal Volume Vt'...
    'Total Ventilatory Drive Dtotal'};
units={'' 'beats/min' 'mmHg' 'cm H20' 'Torr' '%' 'breaths/min' 'litres' ''};
SaveSimulationSystem(Patient,datafilename,variables,units);
%CircadianProcess
datafilename='CircadianProcess';
variables={'H' 'L' 'S' 'REM' 'SWA' 'Sleep/Awake' 'Dstate'};
units={'' '' ''  '' '' '' ''};
SaveSimulationSystem(Patient,datafilename,variables,units);
%deltaFtas
datafilename='deltaFtas';
variables={'Delta Ftas' 'W alpha sympathetic'};
units={'' ''};
SaveSimulationSystem(Patient,datafilename,variables,units);
%GIMM_FFA_SEC
datafilename='GIMM_FFA_SEC';
variables={'Plasma glucose' 'Plasma insulin' 'Plasma fatty acids' 'Plasma ephinephrin' 'Diets'...
    'Insulin infusion rate' 'Glucose infusion rate'};
units={'mg/dL' 'microUnits/ml' 'micromole/L' 'picoMole' 'mg/min' 'microUnits/kg/sec' 'mg/kg/sec'};
SaveSimulationSystem(Patient,datafilename,variables,units);
%Nt
datafilename='Nt';
variables={'Central Respiratory Drive NT'};
units={''};
SaveSimulationSystem(Patient,datafilename,variables,units);
%PVleft
datafilename='PVleft';
variables={'Left Ventricular Pressure' 'Left Ventricular Volume'};
units={'mmHg' 'ml'};
SaveSimulationSystem(Patient,datafilename,variables,units);
%Resp_Rhythm
datafilename='Resp_Rhythm';
variables={'Respiratory Rhythm'};
units={''};
SaveSimulationSystem(Patient,datafilename,variables,units);
%stpres
datafilename='stpres';
variables={'u' 'z' 'y'};
units={'' '' ''};
SaveSimulationSystem(Patient,datafilename,variables,units);
%TPR
datafilename='TPR';
variables={'Splanchnic peripheral flow resistance Rsp'...
    'Extra-splanchnic peripheral resistance Rep' 'skeletal muscle peripheral flow resistance Rmp_n'...
    'Brain peripheral resistance Gbp' 'Muscular peripheral resistance Rmp' 'Coronary peripheral flow resistance Rhp'...
    'Splanchnic venous unstressed volume Vusv' 'Extra-splanchnic venous unstressed volume Vuev'...
    'Skeletal muscle venous unstressed volume Vumv' 'TPR change'};
units={'mmHg.sec/mL' 'mmHg.sec/mL' 'mmHg.sec/mL' 'mmHg.sec/mL' 'mmHg.sec/mL'...
    'mmHg.sec/mL' 'ml' 'ml' 'ml' 'mmHg.sec/mL'};
SaveSimulationSystem(Patient,datafilename,variables,units);
%varHeartPeriod
datafilename='varHeartPeriod';
variables={'Sinoatrial node rate' 'Heart period input' 'Heart period output' 'Heart Period'};
units={'1/sec' '' '' 'sec'};
SaveSimulationSystem(Patient,datafilename,variables,units);


end

