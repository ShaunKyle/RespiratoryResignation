function RunSimulation()
set_param('PNEUMA/t_stop','Value',num2str(evalin('base','t_end_new'))); % update GUI
set_param('PNEUMA','StartTime',num2str(evalin('base','t_start_new')),'StopTime',...
    num2str(evalin('base','t_end_new')),'simulationmode','accelerator');
myopt = simset('Solver','ode23tb','RelTol',0.2,'MaxStep',evalin('base','time_step_new'),'DstWorkspace','base');
open_system('PNEUMA/Progress', 'force');
sim('PNEUMA',[evalin('base','t_start_new') evalin('base','t_end_new')],myopt);
end