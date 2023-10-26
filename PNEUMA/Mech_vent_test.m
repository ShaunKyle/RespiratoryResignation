% Script to test mechanical ventilation
PNEUMA_MAIN_CONTROL_PANEL;
% Load lung function for patient

%% Effect of low oxygen
LungFunction=[0,1]; % set lung function to 100% for entire simulation
t_start_new=0;
t_end_new=1000; % simulate for 1000 seconds
t_O2_start=100;
t_O2_duration=900; %simulate low oxygen from 100 to 1000 seconds
PIO2_change=-90; % simulate a drop in oxygen (from 150 to 60 Torr)
set_param('PNEUMA/t_stop','Value',num2str(evalin('base','t_end_new'))); % update GUI
set_param('PNEUMA','StartTime',num2str(evalin('base','t_start_new')),'StopTime',...
    num2str(evalin('base','t_end_new')),'simulationmode','accelerator');
% load simulation options and start
myopt = simset('Solver','ode23tb','RelTol',0.2,'MaxStep',evalin('base','time_step_new'),'DstWorkspace','base');
open_system('PNEUMA/Progress', 'force');
sim('PNEUMA',[evalin('base','t_start_new') evalin('base','t_end_new')],myopt);
SaveSimulation('Low oxygen');
% Resets
t_O2_start=0;
t_O2_duration=0; %disable oxygen pulse

%% Effect of Neuromuscular block
LungFunction=[0,1]; % set lung function to 100% for entire simulation
t_start_new=0;
t_end_new=1200; % simulate for 1000 seconds
t_NM_block_start=100;
t_NM_block_duration=1100;
NM_block_gain=0.2; %set respiratory muscles to 0.2
set_param('PNEUMA/t_stop','Value',num2str(evalin('base','t_end_new'))); % update GUI
set_param('PNEUMA','StartTime',num2str(evalin('base','t_start_new')),'StopTime',...
    num2str(evalin('base','t_end_new')),'simulationmode','accelerator');
% load simulation options and start
myopt = simset('Solver','ode23tb','RelTol',0.2,'MaxStep',evalin('base','time_step_new'),'DstWorkspace','base');
open_system('PNEUMA/Progress', 'force');
sim('PNEUMA',[evalin('base','t_start_new') evalin('base','t_end_new')],myopt);
SaveSimulation('NM block');
% Resets
t_NM_block_start=0;
t_NM_block_duration=0;
NM_block_gain=1; % reset NM block

%% Effect of Neuromuscular block with ventilatory support
LungFunction=[0,1]; % set lung function to 100% for entire simulation
t_start_new=0;
t_end_new=1200; % simulate for 1000 seconds
t_NM_block_start=100;
t_NM_block_duration=1100;
NM_block_gain=0; % total NM block
t_Mech_Vent_start=200;  % start autonomous ventilator at 200 seconds
t_Mech_Vent_duration=1000;
Ventilator_rate=12; % 12 breats per minute
Mech_Vent_pressure=17; % set mech ventilator pressure to 17 cm H2O

set_param('PNEUMA/t_stop','Value',num2str(evalin('base','t_end_new'))); % update GUI
set_param('PNEUMA','StartTime',num2str(evalin('base','t_start_new')),'StopTime',...
    num2str(evalin('base','t_end_new')),'simulationmode','accelerator');
% load simulation options and start
myopt = simset('Solver','ode23tb','RelTol',0.2,'MaxStep',evalin('base','time_step_new'),'DstWorkspace','base');
open_system('PNEUMA/Progress', 'force');
sim('PNEUMA',[evalin('base','t_start_new') evalin('base','t_end_new')],myopt);
SaveSimulation('NM block with mechanical ventilation');
% Resets
t_NM_block_start=0;
t_NM_block_duration=0;
NM_block_gain=1; % reset NM block
t_Mech_Vent_start=0;  % reset mechanical ventilator 
t_Mech_Vent_duration=0;

%% Effect of low lung function
LungFunction=[0,0.25]; % set lung function to 25% for entire simulation
t_start_new=0;
t_end_new=1200; % simulate for 1000 seconds


set_param('PNEUMA/t_stop','Value',num2str(evalin('base','t_end_new'))); % update GUI
set_param('PNEUMA','StartTime',num2str(evalin('base','t_start_new')),'StopTime',...
    num2str(evalin('base','t_end_new')),'simulationmode','accelerator');
% load simulation options and start
myopt = simset('Solver','ode23tb','RelTol',0.2,'MaxStep',evalin('base','time_step_new'),'DstWorkspace','base');
open_system('PNEUMA/Progress', 'force');
sim('PNEUMA',[evalin('base','t_start_new') evalin('base','t_end_new')],myopt);
SaveSimulation('Lung function at 25 percent');
% Resets
LungFunction=[0,1]; %reset lung function to 100%



%% Simulate patient 10 on 60% oxygen and no ventilation
FileName=[cd '\Patient Lung Functions\Patient10.mat'];
load(FileName);
t_start_new=0;
t_end_new=4*24*60*60; % simulate for 4 days
t_O2_start=0;
t_O2_duration=4*24*60*60; %simulate high oxygen
PIO2_change=300; % simulate inspired oxygen at 450 Torr
set_param('PNEUMA/t_stop','Value',num2str(evalin('base','t_end_new'))); % update GUI
set_param('PNEUMA','StartTime',num2str(evalin('base','t_start_new')),'StopTime',...
    num2str(evalin('base','t_end_new')),'simulationmode','accelerator');
% load simulation options and start
myopt = simset('Solver','ode23tb','RelTol',0.2,'MaxStep',evalin('base','time_step_new'),'DstWorkspace','base');
open_system('PNEUMA/Progress', 'force');
sim('PNEUMA',[evalin('base','t_start_new') evalin('base','t_end_new')],myopt);
SaveSimulation('Patient10 high oxygen');
%Resets
t_O2_start=0;
t_O2_duration=0; %disable oxygen pulse
PIO2_change=-90;
LungFunction=[0,1]; % reset lung function


