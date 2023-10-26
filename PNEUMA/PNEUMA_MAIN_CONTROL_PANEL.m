function varargout = PNEUMA_MAIN_CONTROL_PANEL(varargin)
% PNEUMA_MAIN_CONTROL_PANEL Application M-file for PNEUMA_MAIN_CONTROL_PANEL.fig
%    FIG = PNEUMA_MAIN_CONTROL_PANEL launch PNEUMA_MAIN_CONTROL_PANEL GUI.
%    PNEUMA_MAIN_CONTROL_PANEL('callback_name', ...) invoke the named callback.

% Last Modified by Limei Cheng within GUIDE of Matlab R2007b 22-Apr-2010 11:37 am. 
% Note: RealTolerance is 0.2 now for this GUI.



if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');% set(fig,'Color',get(0,'DefaultUicontrolBackgroundColor'));

    
	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
    
    %!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    PNEUMA_MAIN_CONTROL_PANEL('figure1_CreateFcn',handles.figure1,[]);
    
    % starting time of the simulation
    % --t_start--
    set(handles.edit1,'Value',evalin('base','t_start_new'));
    set(handles.edit1,'String',num2str(get(handles.edit1,'Value')));
    
    % ending time of the simulation
    % --t_end--
    set(handles.edit2,'Value',evalin('base','t_end_new'));
    set(handles.edit2,'String',num2str(get(handles.edit2,'Value')));
    
    % this command allows the user to stop the simulation anytime 
    % set t_stop in simulink
    set_param('PNEUMA/t_stop','Value',num2str(evalin('base','t_end_new')));
    
    % set the integration step
    % --time_step--
    set(handles.edit3,'Value',evalin('base','time_step_new'));
    set(handles.edit3,'String',num2str(get(handles.edit3,'Value')));
    
    % set the sample time of the simulation to be saved 
    % --sampletime--
    set(handles.edit4,'Value',evalin('base','sampletime'));
    set(handles.edit4,'String',num2str(get(handles.edit4,'Value')));
    
     % set the segement time of the simulation to be saved 
    % --DAY--
    set(handles.edit10,'Value',evalin('base','DAY'));
    set(handles.edit10,'String',num2str(get(handles.edit10,'Value')));
   
    
    
    if(evalin('base','adjs_fig_num')~=0)
        adjs_fig_num = adjustable_inputs_6;
        assignin('base','adjs_fig_num',adjs_fig_num);
    end
    
    
    if(evalin('base','man_fig_num')~=0)
        man_fig_num = interventions;
        assignin('base','man_fig_num',man_fig_num);
    end
    
    
    if(evalin('base','const_fig_num')~=0)
        const_fig_num = constant_parameters_6;
        assignin('base','const_fig_num',const_fig_num);
    end
    
    guidata(fig,handles);
    
    
    if nargout > 0
		varargout{1} = fig;
	end

elseif ischar(varargin{1}) % INVOKE NAMED SUBFUNCTION OR CALLBACK

	try
		[varargout{1:nargout}] = feval(varargin{:}); % FEVAL switchyard
	catch
		disp(lasterr);
	end

end

% starting time
% --t_start--
function varargout = edit1_Callback(h, eventdata, handles, varargin)
assignin('base','t_start_new',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit1_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_start_new'));
set(h,'String',num2str(get(h,'Value')));


% ending time
% --t_end--
function varargout = edit2_Callback(h, eventdata, handles, varargin)
assignin('base','t_end_new',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

%assignin('base','t_dur_save',evalin('base','t_dur_save'));
%removed by Limei on April 15, 2010
%assignin('base','t_dur_save_new',(get(h,'Value')-get(handles.edit4,'Value')));
set_param('PNEUMA/t_stop','Value',num2str(evalin('base','t_end_new'))); % set t_stop in simulink

function varargout = edit2_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_end_new'));
set(h,'String',num2str(get(h,'Value')));
set_param('PNEUMA/t_stop','Value',num2str(evalin('base','t_end_new'))); % set t_stop in simulink


% integration step size
% --time_step--
function varargout = edit3_Callback(h, eventdata, handles, varargin)
assignin('base','time_step_new',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit3_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','time_step_new'));
set(h,'String',num2str(get(h,'Value')));


% saved sample time 
% --sampletime--
function varargout = edit4_Callback(h, eventdata, handles, varargin)
assignin('base','sampletime',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));
%removed by Limei on April 15, 2010
%assignin('base','t_dur_save_new',(get(handles.edit2,'Value')-get(h,'Value')));


function varargout = edit4_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','sampletime'));
set(h,'String',num2str(get(h,'Value')));
% saved segment time
% --DAY--
function varargout = edit10_Callback(h, eventdata, handles, varargin)
assignin('base','DAY',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit10_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','DAY'));
set(h,'String',num2str(get(h,'Value')));

function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
adjs_fig_num = adjustable_inputs_6;
assignin('base','adjs_fig_num',adjs_fig_num);

% assigned a nonzero number if "constant_parameters" panel is opened for the first time
function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)
const_fig_num = constant_parameters_6;
assignin('base','const_fig_num',const_fig_num);

% assigned a nonzero number if "interventions" panel is opened for the first time
function varargout = pushbutton4_Callback(h, eventdata, handles, varargin)
man_fig_num = interventions;
assignin('base','man_fig_num',man_fig_num);

% Reload all parameter values
% --Reload--
function varargout = pushbutton8_Callback(h, eventdata, handles, varargin)
clear all;
PNEUMA_MAIN_CONTROL_PANEL('figure1_CreateFcn',gcbo,[],guidata(gcbo));
PNEUMA_MAIN_CONTROL_PANEL;

% Each GUI panel is assigned with a variable. 
% If the panel is not opened or has been closed by clicking on "close"
% button, then the variable will be set to zero.  Otherwise when "reload",
% the panel will be refreshed.  This functions similar to handles.

if(evalin('base','adjs_fig_num')~=0)
    adjs_fig_num = adjustable_inputs_6;
    assignin('base','adjs_fig_num',adjs_fig_num);
end

if(evalin('base','man_fig_num')~=0)
    man_fig_num = interventions;
    assignin('base','man_fig_num',man_fig_num);
end

if(evalin('base','const_fig_num')~=0)
    const_fig_num = constant_parameters_6;
    assignin('base','const_fig_num',const_fig_num);
end

% --Run--
function varargout = pushbutton9_Callback(h, eventdata, handles, varargin)


set_param('PNEUMA/t_stop','Value',num2str(evalin('base','t_end_new')));

myopt = simset('Solver','ode23tb','RelTol',0.2,'MaxStep',evalin('base','time_step_new'),'DstWorkspace','base');

set_param('PNEUMA','StartTime',num2str(evalin('base','t_start_new')),'StopTime',...
num2str(evalin('base','t_end_new')),'simulationmode','accelerator');


sim('PNEUMA',[evalin('base','t_start_new') evalin('base','t_end_new')],myopt);

simset

% --Stop--
function varargout = pushbutton10_Callback(h, eventdata, handles, varargin)

set_param('PNEUMA/t_stop','Value','0');


% --Close--

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --- Executes on button press in close_pushbutton.
function varargout = pushbutton11_Callback(h, eventdata, handles)
% hObject    handle to close_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

user_response = modaldlg('Title','Closing PNEUMA');
switch lower(user_response)
    case 'no'
        % take no action
    case 'yes'
        % Prepare to close GUI application window
        delete(gcbf);
        close all   
        clear all
        clc
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% % --- Executes during object creation, after setting all properties.
% function ResultsList_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to ResultsList (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: listbox controls usually have a white background, change
% %       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
% usewhitebg = 1;
% if usewhitebg
%     set(hObject,'BackgroundColor','white');
% else
%     set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% this function will be executed when the figure is created 
function varargout = figure1_CreateFcn(h, eventdata, handles, varargin)

if (evalin('base','exist(''adjs_fig_num'')') == 0)
    assignin('base','adjs_fig_num',0);
end

if (evalin('base','exist(''const_fig_num'')') == 0)
    assignin('base','const_fig_num',0);
end

if (evalin('base','exist(''man_fig_num'')') == 0)
    assignin('base','man_fig_num',0);
end


pneuma_variables;
% % pneuma_IC;

load_system('PNEUMA');

pneuma_gains;





% this function will be executed when the figure is closed

% --close figure--
function varargout = figure1_CloseRequestFcn(h, eventdata, handles, varargin)
 sprintf( 'Deleting Figure 1' )
 % close(handles.figure1);
  clear all;
 delete( gcbf );

% evalin('base','clear');

% % --- Executes on mouse press over figure background.
% function figure1_ButtonDownFcn(hObject, eventdata, handles)
% % hObject    handle to figure1 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function About_Callback(hObject, eventdata, handles)
% hObject    handle to About (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
About;


% --------------------------------------------------------------------
function Manual_Callback(hObject, eventdata, handles)
% hObject    handle to Manual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%   web('PNEUMA_MANUAL_FINAL0.mht');
%    web('PNEUMA_MANUAL_FINAL1.htm');
%   web('PNEUMA_MANUAL_FINAL.doc'); 
web('PNEUMA2007_MANUAL.pdf');


% --------------------------------------------------------------------
% function Help_Callback(hObject, eventdata, handles)
% hObject    handle to Help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
