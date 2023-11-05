%% Load PNEUMA model and variables
% You can close the control panel.
PNEUMA_MAIN_CONTROL_PANEL;

% To view the Simulink model, enter PNEUMA into command window.
% PNEUMA

% TODO: Specify relevant signals to log before running simulation?

%% Short example simulation

% Load patient lung function
LungFunction=[0, 0.1];      % Constant lung function (max is 1)

% Set duration [s]
t_start_new=0;
t_end_new=60*60;    % 1 hour

% Set open-loop control parameters
% Controls pulse blocks in Ventilator Controller.
% 1) Inspiratory oxygen [torr]
PIO2 = 150;
PIO2_change = 0;
t_O2_start = 0;
t_O2_duration = 0;

% 2) Neuromuscular block [On/Off]
NM_block_gain = 1;
t_NM_block_start = 0;
t_NM_block_duration = 0;

% 3) Ventilation rate and pressure
Ventilator_rate = 12;
Mech_Vent_pressure = 120;
t_Mech_Vent_start = 0;
t_Mech_Vent_duration = 0;

% Run simulation
RunSimulation()

% Save simulation
SaveSimulation('simdata/TestSim');

% Reset stuff
DEFAULTSIMPARAMS

%% Effect of reducing lung function (LungsOnly)
% Purpose:
% Observe effect of lung function on physiological signals
%
% Parameters: 
% No ventilation, no NMB
% Inspiratory oxygen at 150 torr

lungConstants = [0.1, 0.5, 0.8];
for n = 1:length(lungConstants)
    % Independent var
    constantLung = lungConstants(n);
    disp("LungFunction = " + num2str(constantLung));

    % Run sim
    DEFAULTSIMPARAMS
    LungFunction = [0, constantLung];
    RunSimulation();
    SaveSimulation(['simdata/LungsOnly/LungFunction', num2str(100*constantLung)]);
end

% Conclusions:
% - At lower lung function, ABP is generally higher. (until patient dies)


%% Effect of oxygen concentration on sick patient (O2Only)
% Purpose:
% Observe effect of 
% Recommendation is 150 - 760 Torr

for constantLung = [0.5, 0.1]
    DEFAULTPARAMS   % 1 hour
    LungFunction = [0, constantLung];
    for constantO2 = 100:100:800
        PIO2 = constantO2;
        RunSimulation();
        SaveSimulation('simdata/O2Only/Lung' + num2str(100*constantLung) ...
            + 'Oxy' + num2str(constantO2));
    end
end

%% TODO: Patients

for n = 1:10
    % Load patient lun function
    LungFunction = LoadPatient(n);

    % Simulate for 4 days
    t_start_new=0;
    t_end_new=4*24*60*60;

    % Run
    RunSimulation();
    SaveSimulation('simdata/Patient' + num2str(n) + '/NoIntervention');
end

%% Helper functions

% function LungFunction=LoadPatient(patientNumber)
% %% LOADPATIENT Loads lung function for specified patient
% % patientNumber is between 1 to 10
% FileName=[cd '/PNEUMA/Patient Lung Functions/Patient' num2str(patientNumber) '.mat'];
% load(FileName, 'LungFunction');
% end
% 
% function RunSimulation()
% set_param('PNEUMA/t_stop','Value',num2str(evalin('base','t_end_new'))); % update GUI
% set_param('PNEUMA','StartTime',num2str(evalin('base','t_start_new')),'StopTime',...
%     num2str(evalin('base','t_end_new')),'simulationmode','accelerator');
% myopt = simset('Solver','ode23tb','RelTol',0.2,'MaxStep',evalin('base','time_step_new'),'DstWorkspace','base');
% open_system('PNEUMA/Progress', 'force');
% sim('PNEUMA',[evalin('base','t_start_new') evalin('base','t_end_new')],myopt);
% end
