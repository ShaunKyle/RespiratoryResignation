%% Load PNEUMA model and variables
% You can close the control panel.
PNEUMA_MAIN_CONTROL_PANEL;

% To view the Simulink model, enter PNEUMA into command window.
% PNEUMA

% TODO: Specify relevant signals to log before running simulation?

%% testing...

% Load patient lung function
LungFunction=[0,0.25];
% LungFunction = LoadPatient(2);

% Set duration
t_start_new=0;
t_end_new=50;

% Set something else

% Run simulation
RunSimulation()

% Save simulation
SaveSimulation('simdata/TestSim');

% Reset stuff

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
