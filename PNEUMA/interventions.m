function varargout = interventions(varargin)
% INTERVENTIONS Application M-file for interventions.fig
%    FIG = INTERVENTIONS launch interventions GUI.
%    INTERVENTIONS('callback_name', ...) invoke the named callback.

% Last Modified by Limei Cheng within GUIDE of Matlab 7.2 30-Nov-2007 16:15

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

% Use system color scheme for figure:
set(fig,'Color',get(0,'DefaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
    
    % --Upper Airway Sensitivity--
    % set the value for variable 'S_ua' which will determine the obstruction
    % of the upper airway.
    
    % set minimum and maximum value for the S_UA slider bar
    set(handles.slider1,'Min',-40);
    set(handles.slider1,'Value',evalin('base','Pcrit'));
    set(handles.slider1,'Max',-0.1);
%     S_UA = (1/(C_ua_awake*25*Pcrit)-1)/35;
   
    gain_file_name = ['PNEUMA/Respiratory System/Upper_Airway_Mechanism/Upper_Airway_Model/Upper_Airway_Compliance/S_UA'];
    set_param(gain_file_name,'Value',num2str((-1/(evalin('base','C_ua_awake')*25*get(handles.slider1,'Value'))-1)/35));
    
    % set minimum, current and maximum value for S_ua boxes. 
    set(handles.edit1,'Value',get(handles.slider1,'Min'));
    set(handles.edit1,'String',num2str(get(handles.slider1,'Min')));
    
    set(handles.edit2,'Value',get(handles.slider1,'Value'));
    set(handles.edit2,'String',num2str(get(handles.slider1,'Value')));
    
    set(handles.edit3,'Value',get(handles.slider1,'Max'));
    set(handles.edit3,'String',num2str(get(handles.slider1,'Max')));

    %removed by Limei on April 23, 2010.
%     % --Upper Aiway Blockage--
%     % allow the user to set the time for upper airway completely occlusion
%     set(handles.checkbox1,'Value',evalin('base','UA_blocker'));
%     gain_file_name = ['PNEUMA/Respiratory System/'...
%             'Modified Upper Airway Conductance/UA_blocker'];
%     set_param(gain_file_name,'Gain',num2str(get(handles.checkbox1,'Value')));
%     
%     set(handles.edit4,'Value',evalin('base','t_start_UA'));
%     set(handles.edit4,'String',num2str(get(handles.edit4,'Value')));
%     
%     set(handles.edit5,'Value',evalin('base','t_end_UA'));
%     set(handles.edit5,'String',num2str(get(handles.edit5,'Value')));
    
    % --Sleep Mechanism---------------------------------------------------
    
    % If "Sleep" checkbox is selected then Sleep Process will
    % be enabled for simulation.  Otherwise, default simulation
    % runs at awake state.
    
    set(handles.checkbox2,'Value',evalin('base','Sleep'));
    gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Sleep Enable'];
    set_param(gain_file_name,'Value',num2str(get(handles.checkbox2,'Value')));
    
    % --Wakefulness Stimulus--
    set(handles.slider2,'Min',0);
    set(handles.slider2,'Value',evalin('base','S_wake'));
    set(handles.slider2,'Max',0.5);
    gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/S_wake'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider2,'Value')));
    
    %set Wakefulness Stimulus
    set(handles.edit6,'Value',get(handles.slider2,'Min'));
    set(handles.edit6,'String',num2str(get(handles.slider2,'Min')));
    
    set(handles.edit7,'Value',get(handles.slider2,'Value'));
    set(handles.edit7,'String',num2str(get(handles.slider2,'Value')));
    
    set(handles.edit8,'Value',get(handles.slider2,'Max'));
    set(handles.edit8,'String',num2str(get(handles.slider2,'Max')));
    
    %set Circadian parameters
    set(handles.edit9,'Value',evalin('base','Circadian_High'));
    set(handles.edit9,'String',num2str(get(handles.edit9,'Value')));
    gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian_High'];
    set_param(gain_file_name,'Value',num2str(get(handles.edit9,'Value')));
    
    set(handles.edit10,'Value',evalin('base','Circadian_Low'));
    set(handles.edit10,'String',num2str(get(handles.edit10,'Value')));
    gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian_Low'];
    set_param(gain_file_name,'Value',num2str(get(handles.edit10,'Value')));
    
    set(handles.edit67,'Value',evalin('base','Circadian_Phase'));
    set(handles.edit67,'String',num2str(get(handles.edit67,'Value')));
    gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(theta)'];
    set_param(gain_file_name,'Phase',num2str(get(handles.edit67,'Value')));
    gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(2*theta)'];
    set_param(gain_file_name,'Phase',num2str(get(handles.edit67,'Value')));
    gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(3*theta)'];
    set_param(gain_file_name,'Phase',num2str(get(handles.edit67,'Value')));
    gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(4*theta)'];
    set_param(gain_file_name,'Phase',num2str(get(handles.edit67,'Value')));
    gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(5*theta)'];
    set_param(gain_file_name,'Phase',num2str(get(handles.edit67,'Value')));
  
% %     gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave'];
% %     set_param(gain_file_name,'Phase',num2str(get(handles.edit67,'Value')));
% %     gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave1'];
% %     set_param(gain_file_name,'Phase',num2str(get(handles.edit67,'Value')));
% %     gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave2'];
% %     set_param(gain_file_name,'Phase',num2str(get(handles.edit67,'Value')));
% %     gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave3'];
% %     set_param(gain_file_name,'Phase',num2str(get(handles.edit67,'Value')));
% %     gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave4'];
% %     set_param(gain_file_name,'Phase',num2str(get(handles.edit67,'Value')));
    
    set(handles.edit69,'Value',evalin('base','Circadian_Period'));
    set(handles.edit69,'String',num2str(get(handles.edit69,'Value')));
    gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(theta)'];
    set_param(gain_file_name,'Frequency',num2str((2*pi)/(get(handles.edit69,'Value')*3600)));
    gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(2*theta)'];
    set_param(gain_file_name,'Frequency',num2str((2*pi*2)/(get(handles.edit69,'Value')*3600)));
    gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(3*theta)'];
    set_param(gain_file_name,'Frequency',num2str((2*pi*3)/(get(handles.edit69,'Value')*3600)));
    gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(4*theta)'];
    set_param(gain_file_name,'Frequency',num2str((2*pi*4)/(get(handles.edit69,'Value')*3600)));
    gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(5*theta)'];
    set_param(gain_file_name,'Frequency',num2str((2*pi*5)/(get(handles.edit69,'Value')*3600)));
    
% %     gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave'];
% %     set_param(gain_file_name,'Frequency',num2str((2*pi)/(get(handles.edit69,'Value')*3600)));
% %     gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave1'];
% %     set_param(gain_file_name,'Frequency',num2str((2*pi*2)/(get(handles.edit69,'Value')*3600)));
% %     gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave2'];
% %     set_param(gain_file_name,'Frequency',num2str((2*pi*3)/(get(handles.edit69,'Value')*3600)));
% %     gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave3'];
% %     set_param(gain_file_name,'Frequency',num2str((2*pi*4)/(get(handles.edit69,'Value')*3600)));
% %     gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave4'];
% %     set_param(gain_file_name,'Frequency',num2str((2*pi*5)/(get(handles.edit69,'Value')*3600)));
    

% %     set(handles.edit68,'Value',evalin('base','Init_Proc_S'));
% %     set(handles.edit68,'String',num2str(get(handles.edit68,'Value')));
% %     gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Init_Proc_S'];
% %     set_param(gain_file_name,'Value',num2str(get(handles.edit68,'Value')));
% %     gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Mem_Proc_S'];
% %     set_param(gain_file_name,'X0',num2str(get(handles.edit68,'Value')));
% %     gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Mem1_Proc_S'];
% %     set_param(gain_file_name,'X0',num2str(get(handles.edit68,'Value')));
    
    % --Oxygen Control----------------------------------------------------
    % For Oxygen control, the user can either preset a time to administrate 
    % different Oxygen in the simulation or the user can adjust the level
    % while the simulation is running.
    % --PIO2--
    set(handles.edit11,'Value',evalin('base','PIO2'));
    set(handles.edit11,'String',num2str(get(handles.edit11,'Value')));
    
    % --PIO2_pulse_change--
%     set(handles.edit12,'Value',evalin('base','PIO2_pulse_change'));
%     set(handles.edit12,'String',num2str(get(handles.edit12,'Value')));
    
    % --t_O2_start--
    set(handles.edit13,'Value',evalin('base','t_O2_start'));
    set(handles.edit13,'String',num2str(get(handles.edit13,'Value')));

    % --t_O2_duration--
    set(handles.edit14,'Value',evalin('base','t_O2_duration'));
    set(handles.edit14,'String',num2str(get(handles.edit14,'Value')));
    
    % --PIO2_change--
    set(handles.slider8,'Min',-150);
    set(handles.slider8,'Value',evalin('base','PIO2_change'));
    set(handles.slider8,'Max',150);
%     gain_file_name = ['PNEUMA/Respiratory System/Gas '...
%         'Exchange/DEAD SPACE/O2 DEAD SPACE/O2 Addition'];
%     set_param(gain_file_name,'Value',num2str(get(handles.slider8,'Value')));
    
    %set PIO2_change -- 
    set(handles.edit58,'Value',get(handles.slider8,'Min'));
    set(handles.edit58,'String',num2str(get(handles.slider8,'Min')));
    
    set(handles.edit59,'Value',get(handles.slider8,'Value'));
    set(handles.edit59,'String',num2str(get(handles.slider8,'Value')));
    
    set(handles.edit60,'Value',get(handles.slider8,'Max'));
    set(handles.edit60,'String',num2str(get(handles.slider8,'Max')));
    
    % --Carbon Dioxide Control--------------------------------------------
    % For Carbon Dioxide control, the user can either preset a time to administrate 
    % different Carbon Dioxide in the simulation or the user can adjust the level
    % while the simulation is running.
    
    % set Non-Isocapnia activation checkbox in simulink
    set(handles.checkbox11,'Value',evalin('base','Hypercapnia_activation'));
    gain_file_name = ['PNEUMA/Respiratory System/Gas Exchange/DEAD SPACE/'...
        'CO2 DEAD SPACE/CO2 Partial Pressure/Hypercapnia_activation'];
    set_param(gain_file_name,'Value',num2str(get(handles.checkbox11,'Value')));
    
    set(handles.checkbox12,'Value',evalin('base','Isocapnia_activation'));
    gain_file_name = ['PNEUMA/Respiratory System/Gas Exchange/DEAD SPACE/'...
        'CO2 DEAD SPACE/CO2 Partial Pressure/Isocapnia_activation'];
    set_param(gain_file_name,'Value',num2str(get(handles.checkbox12,'Value')));    
    
    
    % --PICO2--
    set(handles.edit15,'Value',evalin('base','PICO2'));
    set(handles.edit15,'String',num2str(get(handles.edit15,'Value')));
    
%     % --PICO2_change--
%     set(handles.edit16,'Value',evalin('base','PICO2_change'));
%     set(handles.edit16,'String',num2str(get(handles.edit16,'Value')));
    
    % --t_CO2_start--
    set(handles.edit17,'Value',evalin('base','t_CO2_start'));
    set(handles.edit17,'String',num2str(get(handles.edit17,'Value')));
    
    % --t_CO2_duration--
    set(handles.edit18,'Value',evalin('base','t_CO2_duration'));
    set(handles.edit18,'String',num2str(get(handles.edit18,'Value')));
    
    % --PICO2_change--
    set(handles.slider10,'Min',0);
    set(handles.slider10,'Value',evalin('base','PICO2_change'));
    set(handles.slider10,'Max',60);
%     gain_file_name = ['PNEUMA/Respiratory System/Gas '...
%         'Exchange/DEAD SPACE/CO2 DEAD SPACE/CO2 Addition'];
%     set_param(gain_file_name,'Value',num2str(get(handles.slider10,'Value')));
    
    %set PICO2_change --
    set(handles.edit64,'Value',get(handles.slider10,'Min'));
    set(handles.edit64,'String',num2str(get(handles.slider10,'Min')));
    
    set(handles.edit65,'Value',get(handles.slider10,'Value'));
    set(handles.edit65,'String',num2str(get(handles.slider10,'Value')));
    
    set(handles.edit66,'Value',get(handles.slider10,'Max'));
    set(handles.edit66,'String',num2str(get(handles.slider10,'Max')));
    
    
    % --Mueller Maneuver---------------------------------------------------
    % set Mueller_activation checkbox in simulink
    set(handles.checkbox7,'Value',evalin('base','Mueller_activation'));
    gain_file_name = ['PNEUMA/FVC + Valsalva + Mueller maneuvers'...
            '/Mueller_activation'];
    set_param(gain_file_name,'Value',num2str(get(handles.checkbox7,'Value')));
    gain_file_name = ['PNEUMA/Central Neural Control/lung feedback/lung firing saturation'];
    set_param(gain_file_name,'UpperLimit','100');
    
    % --t_Mueller_start--
    set(handles.edit46,'Value',evalin('base','t_Mueller_start'));
    set(handles.edit46,'String',num2str(get(handles.edit46,'Value')));
    
    % --t_Mueller_duration--
    set(handles.edit47,'Value',evalin('base','t_Mueller_duration'));
    set(handles.edit47,'String',num2str(get(handles.edit47,'Value')));
    
    % --t_Mueller_insp--
    set(handles.edit48,'Value',evalin('base','t_Mueller_insp'));
    set(handles.edit48,'String',num2str(get(handles.edit48,'Value')));
    
    
    % --Valsalva Maneuver------------------------------------------------
    % set Valsalva_activation checkbox in simulink
    set(handles.checkbox8,'Value',evalin('base','Valsalva_activation'));
    gain_file_name = ['PNEUMA/FVC + Valsalva + Mueller maneuvers'...
            '/Valsalva_activation'];
    set_param(gain_file_name,'Value',num2str(get(handles.checkbox8,'Value')));
    
    % --t_valsalva_start--
    set(handles.edit49,'Value',evalin('base','t_valsalva_start'));
    set(handles.edit49,'String',num2str(get(handles.edit49,'Value')));
    
    % --t_valsalva_duration--
    set(handles.edit50,'Value',evalin('base','t_valsalva_duration'));
    set(handles.edit50,'String',num2str(get(handles.edit50,'Value')));
    
    % --t_valsalva_insp--
    set(handles.edit51,'Value',evalin('base','t_valsalva_insp'));
    set(handles.edit51,'String',num2str(get(handles.edit51,'Value')));
    
    % --CPAP--------------------------------------------------------------
    % set CPAP_activation checkbox in simulink
    set(handles.checkbox9,'Value',evalin('base','CPAP_activation'));
    gain_file_name = ['PNEUMA/External Pressure/CPAP_activation'];
    set_param(gain_file_name,'Gain',num2str(get(handles.checkbox9,'Value')));
    
    
    % --CPAP_pressure--
    set(handles.edit52,'Value',evalin('base','CPAP_pressure'));
    set(handles.edit52,'String',num2str(get(handles.edit52,'Value')));
    
    % --t_CPAP_start--
    set(handles.edit53,'Value',evalin('base','t_CPAP_start'));
    set(handles.edit53,'String',num2str(get(handles.edit53,'Value')));
    
    % --t_CPAP_duration--
    set(handles.edit54,'Value',evalin('base','t_CPAP_duration'));
    set(handles.edit54,'String',num2str(get(handles.edit54,'Value')));
    
% Removed by Limei on April 16, 2010
%     % --Mechanical Ventilator---------------------------------------------
%     % set Mech_Vent_activation in simulink
%     set(handles.checkbox10,'Value',evalin('base','Mech_Vent_activation'));
%     gain_file_name = ['PNEUMA/External Pressure/Mech_Vent_activation'];
%     set_param(gain_file_name,'Gain',num2str(get(handles.checkbox10,'Value')));
%     
%     
%     % --Mech_Vent_pressure--
%     set(handles.edit55,'Value',evalin('base','Mech_Vent_pressure'));
%     set(handles.edit55,'String',num2str(get(handles.edit55,'Value')));
%     
%     % --t_Mech_Vent_start--
%     set(handles.edit56,'Value',evalin('base','t_Mech_Vent_start'));
%     set(handles.edit56,'String',num2str(get(handles.edit56,'Value')));
%     
%     % --t_Mech_Vent_duration--
%     set(handles.edit57,'Value',evalin('base','t_Mech_Vent_duration'));
%     set(handles.edit57,'String',num2str(get(handles.edit57,'Value')));
    

%    %Added by Limei Cheng on March 28, 2012
    % --Glucose Clamps and Insulin Pumps
    % Glucose Clamps enable checkbox
    set(handles.checkbox13,'Value',evalin('base','Gblock'));
    gain_file_name='PNEUMA/Metabolic Control/Glucose Insulin Interventions/Gblock';
    set_param(gain_file_name,'Gain',num2str(get(handles.checkbox13,'Value')));
    % Insulin Pumps enable Checkbox
    set(handles.checkbox14,'Value',evalin('base','Iblock'));
    gain_file_name='PNEUMA/Metabolic Control/Glucose Insulin Interventions/Iblock';
    set_param(gain_file_name,'Gain',num2str(get(handles.checkbox14,'Value')));
  

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



% --Upper Airway Sensitivity--

function varargout = edit1_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider1,'Min',str2num(get(h,'String')));

function varargout = edit2_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider1,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Respiratory System/Upper_Airway_Mechanism/Upper_Airway_Model/Upper_Airway_Compliance/S_UA'];
set_param(gain_file_name,'Value',num2str((-1/(evalin('base','C_ua_awake')*25*get(handles.slider1,'Value'))-1)/35));%num2str(get(h,'Value')));

function varargout = edit3_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider1,'Max',str2num(get(h,'String')));

function varargout = slider1_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',-40);
set(h,'Value',evalin('base','Pcrit'));
set(h,'Max',-0.1);
gain_file_name = ['PNEUMA/Respiratory System/Upper_Airway_Mechanism/Upper_Airway_Model/Upper_Airway_Compliance/S_UA'];
set_param(gain_file_name,'Value',num2str((-1/(evalin('base','C_ua_awake')*25*get(handles.slider1,'Value'))-1)/35));

function varargout = slider1_Callback(h, eventdata, handles, varargin)
set(handles.edit2,'Value',get(h,'Value'));
set(handles.edit2,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Respiratory System/Upper_Airway_Mechanism/Upper_Airway_Model/Upper_Airway_Compliance/S_UA'];
set_param(gain_file_name,'Value',num2str((-1/(evalin('base','C_ua_awake')*25*get(handles.slider1,'Value'))-1)/35));

% removed by Limei on April 23, 2010
% % --Upper Aiway Blockage--
% function varargout = checkbox1_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','UA_blocker'));
% gain_file_name = ['PNEUMA/Respiratory System/'...
%         'Modified Upper Airway Conductance/UA_blocker'];
% set_param(gain_file_name,'Gain',num2str(get(h,'Value')));
% 
% function varargout = checkbox1_Callback(h, eventdata, handles, varargin)
% gain_file_name = ['PNEUMA/Respiratory System/'...
%         'Modified Upper Airway Conductance/UA_blocker'];
% set_param(gain_file_name,'Gain',num2str(get(h,'Value')));
% 
% function varargout = edit4_Callback(h, eventdata, handles, varargin)
% temp_t = str2num(get(h,'String'));
% set(h,'Value',temp_t+evalin('base','resp_period_start'));
% set(h,'String',num2str(get(h,'Value')));
% assignin('base','t_start_UA',str2num(get(h,'String')));
% 
% function varargout = edit5_Callback(h, eventdata, handles, varargin)
% temp_t = str2num(get(h,'String'));
% set(h,'Value',temp_t+evalin('base','resp_period_start'));
% set(h,'String',num2str(get(h,'Value')));
% assignin('base','t_end_UA',str2num(get(h,'String')));


% --Wakefulness Stimulus--
function varargout = edit6_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider2,'Min',str2num(get(h,'String')));

function varargout = edit7_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider2,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/S_wake'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit8_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider2,'Max',str2num(get(h,'String')));

function varargout = slider2_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','S_wake'));
set(h,'Max',0.5);
gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/S_wake'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider2_Callback(h, eventdata, handles, varargin)
set(handles.edit7,'Value',get(h,'Value'));
set(handles.edit7,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Central Neural Control'...
        '/VENTILATORY DRIVE (chemical)/S_wake'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));


% --Sleep Mechanism--
function varargout = checkbox2_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Sleep'));
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Sleep Enable'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));

function varargout = checkbox2_Callback(h, eventdata, handles, varargin)
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Sleep Enable'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));

function varargout = edit9_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','Circadian_High',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian_High'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));

function varargout = edit10_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','Circadian_Low',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian_Low'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));

function varargout = edit67_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','Circadian_Phase',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(theta)'];
set_param(gain_file_name,'Phase',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(2*theta)'];
set_param(gain_file_name,'Phase',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(3*theta)'];
set_param(gain_file_name,'Phase',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(4*theta)'];
set_param(gain_file_name,'Phase',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(5*theta)'];
set_param(gain_file_name,'Phase',num2str(get(h,'Value')));

% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave'];
% % set_param(gain_file_name,'Phase',num2str(get(h,'Value')));
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave1'];
% % set_param(gain_file_name,'Phase',num2str(get(h,'Value')));
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave2'];
% % set_param(gain_file_name,'Phase',num2str(get(h,'Value')));
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave3'];
% % set_param(gain_file_name,'Phase',num2str(get(h,'Value')));
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave4'];
% % set_param(gain_file_name,'Phase',num2str(get(h,'Value')));

function varargout = edit69_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','Circadian_Period',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(theta)'];
set_param(gain_file_name,'Frequency',num2str((2*pi)/(get(h,'Value')*3600)));
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(2*theta)'];
set_param(gain_file_name,'Frequency',num2str((2*pi*2)/(get(h,'Value')*3600)));
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(3*theta)'];
set_param(gain_file_name,'Frequency',num2str((2*pi*3)/(get(h,'Value')*3600)));
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(4*theta)'];
set_param(gain_file_name,'Frequency',num2str((2*pi*4)/(get(h,'Value')*3600)));
gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian High Sine Wave/Sin(5*theta)'];
set_param(gain_file_name,'Frequency',num2str((2*pi*5)/(get(h,'Value')*3600)));

% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave'];
% % set_param(gain_file_name,'Frequency',num2str((2*pi)/(get(h,'Value')*3600)));
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave1'];
% % set_param(gain_file_name,'Frequency',num2str((2*pi*2)/(get(h,'Value')*3600)));
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave2'];
% % set_param(gain_file_name,'Frequency',num2str((2*pi*3)/(get(h,'Value')*3600)));
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave3'];
% % set_param(gain_file_name,'Frequency',num2str((2*pi*4)/(get(h,'Value')*3600)));
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Circadian Low Sine Wave/Sine Wave4'];
% % set_param(gain_file_name,'Frequency',num2str((2*pi*5)/(get(h,'Value')*3600)));

% % function varargout = edit68_Callback(h, eventdata, handles, varargin)
% % set(h,'Value',str2num(get(h,'String')));
% % assignin('base','Circadian_Period',str2num(get(h,'String')));
% % 
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Init_Proc_S'];
% % set_param(gain_file_name,'Value',num2str(get(h,'Value')));
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Mem_Proc_S'];
% % set_param(gain_file_name,'X0',num2str(get(h,'Value')));
% % gain_file_name = ['PNEUMA/Respiratory System/Sleep Mechanism/Mem1_Proc_S'];
% % set_param(gain_file_name,'X0',num2str(get(h,'Value')));


% --Oxygen Control--
function varargout = edit11_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','PIO2'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit11_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','PIO2',str2num(get(h,'String')));

% function varargout = edit12_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','PIO2_change'));
% set(h,'String',num2str(get(h,'Value')));
% 
% function varargout = edit12_Callback(h, eventdata, handles, varargin)
% set(h,'Value',str2num(get(h,'String')));
% assignin('base','PIO2_change',str2num(get(h,'String')));

function varargout = edit13_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_O2_start'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit13_Callback(h, eventdata, handles, varargin)
temp_t = str2num(get(h,'String'));
set(h,'Value',temp_t+evalin('base','resp_period_start'));
set(h,'String',num2str(get(h,'Value')));
% set(h,'Value',str2num(get(h,'String')));
assignin('base','t_O2_start',str2num(get(h,'String')));


function varargout = edit14_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_O2_duration'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit14_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','t_O2_duration',str2num(get(h,'String')));

function varargout = edit58_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider8,'Min',str2num(get(h,'String')));

function varargout = edit59_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider8,'Value',str2num(get(h,'String')));
% gain_file_name = ['PNEUMA/Respiratory System/Gas '...
%     'Exchange/DEAD SPACE/O2 DEAD SPACE/O2 Addition'];
% set_param(gain_file_name,'Value',num2str(get(h,'Value')));
set(h,'Value',str2num(get(h,'String')));
assignin('base','PIO2_change',str2num(get(h,'String')));

function varargout = edit60_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider8,'Max',str2num(get(h,'String')));

function varargout = slider8_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',-150);
set(h,'Value',evalin('base','PIO2_change'));
set(h,'Max',150);
% gain_file_name = ['PNEUMA/Respiratory System/Gas '...
%         'Exchange/DEAD SPACE/O2 DEAD SPACE/O2 Addition'];
% set_param(gain_file_name,'Value',num2str(get(h,'Value')));

function varargout = slider8_Callback(h, eventdata, handles, varargin)
set(handles.edit59,'Value',get(h,'Value'));
set(handles.edit59,'String',num2str(get(h,'Value')));
% gain_file_name = ['PNEUMA/Respiratory System/Gas '...
%         'Exchange/DEAD SPACE/O2 DEAD SPACE/O2 Addition'];
% set_param(gain_file_name,'Value',num2str(get(h,'Value')));
assignin('base','PIO2_change',get(h,'Value'));


% --Carbon Dioxide Control--
function varargout = edit15_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','PICO2'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit15_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','PICO2',str2num(get(h,'String')));

% function varargout = edit16_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','PICO2_change'));
% set(h,'String',num2str(get(h,'Value')));
% 
% function varargout = edit16_Callback(h, eventdata, handles, varargin)
% set(h,'Value',str2num(get(h,'String')));
% assignin('base','PICO2_change',str2num(get(h,'String')));

function varargout = edit17_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_CO2_start'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit17_Callback(h, eventdata, handles, varargin)
temp_t = str2num(get(h,'String'));
set(h,'Value',temp_t+evalin('base','resp_period_start'));
set(h,'String',num2str(get(h,'Value')));
% set(h,'Value',str2num(get(h,'String')));
assignin('base','t_CO2_start',str2num(get(h,'String')));

function varargout = edit18_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_CO2_duration'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit18_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','t_CO2_duration',str2num(get(h,'String')));

function varargout = edit64_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider10,'Min',str2num(get(h,'String')));

function varargout = edit65_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider10,'Value',str2num(get(h,'String')));
% gain_file_name = ['PNEUMA/Respiratory System/Gas Exchange/DEAD SPACE/CO2 DEAD SPACE/CO2 Addition'];
% set_param(gain_file_name,'Value',num2str(get(h,'Value')));
set(h,'Value',str2num(get(h,'String')));
assignin('base','PICO2_change',str2num(get(h,'String')));

function varargout = edit66_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider10,'Max',str2num(get(h,'String')));

function varargout = slider10_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','PICO2_change'));
set(h,'Max',60);
% gain_file_name = ['PNEUMA/Respiratory System/Gas '...
%         'Exchange/DEAD SPACE/CO2 DEAD SPACE/CO2 Addition'];
% set_param(gain_file_name,'Value',num2str(get(h,'Value')));

function varargout = slider10_Callback(h, eventdata, handles, varargin)
set(handles.edit65,'Value',get(h,'Value'));
set(handles.edit65,'String',num2str(get(h,'Value')));
% gain_file_name = ['PNEUMA/Respiratory System/Gas '...
%         'Exchange/DEAD SPACE/CO2 DEAD SPACE/CO2 Addition'];
% set_param(gain_file_name,'Value',num2str(get(h,'Value')));
set(h,'Value',str2num(get(h,'String')));
assignin('base','PICO2_change',str2num(get(h,'String')));



% --Mueller Maneuver--
function varargout = checkbox7_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Mueller_activation'));
gain_file_name = ['PNEUMA/FVC + Valsalva + Mueller maneuvers'...
        '/Mueller_activation'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));

function varargout = checkbox7_Callback(h, eventdata, handles, varargin)
gain_file_name = ['PNEUMA/FVC + Valsalva + Mueller maneuvers'...
        '/Mueller_activation'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));
assignin('base','Mueller_activation',num2str(get(h,'Value')));

function varargout = edit46_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_Mueller_start'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit46_Callback(h, eventdata, handles, varargin)
temp_t = str2num(get(h,'String'));
set(h,'Value',temp_t+evalin('base','resp_period_start'));
set(h,'String',num2str(get(h,'Value')));
assignin('base','t_Mueller_start',str2num(get(h,'String')));

function varargout = edit47_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_Mueller_duration'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit47_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','t_Mueller_duration',str2num(get(h,'String')));

function varargout = edit48_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_Mueller_insp'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit48_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','t_Mueller_insp',str2num(get(h,'String')));


% --Valsalva Maneuver--
function varargout = checkbox8_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Valsalva_activation'));
gain_file_name = ['PNEUMA/FVC + Valsalva + Mueller maneuvers'...
        '/Valsalva_activation'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));

function varargout = checkbox8_Callback(h, eventdata, handles, varargin)
gain_file_name = ['PNEUMA/FVC + Valsalva + Mueller maneuvers'...
        '/Valsalva_activation'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));
assignin('base','Valsalva_activation',num2str(get(h,'Value')));
%remove by Limei on April 14, 2010
% gain_file_name = ['PNEUMA/Central Neural Control/lung feedback/lung firing saturation'];
% set_param(gain_file_name,'UpperLimit','5');

function varargout = edit49_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_valsalva_start'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit49_Callback(h, eventdata, handles, varargin)
temp_t = str2num(get(h,'String'));
set(h,'Value',temp_t+evalin('base','resp_period_start'));
set(h,'String',num2str(get(h,'Value')));
assignin('base','t_valsalva_start',str2num(get(h,'String')));

function varargout = edit50_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_valsalva_duration'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit50_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','t_valsalva_duration',str2num(get(h,'String')));

function varargout = edit51_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_valsalva_insp'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit51_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','t_valsalva_insp',str2num(get(h,'String')));


% --CPAP--
function varargout = checkbox9_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','CPAP_activation'));
gain_file_name = ['PNEUMA/External Pressure/CPAP_activation'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = checkbox9_Callback(h, eventdata, handles, varargin)
gain_file_name = ['PNEUMA/External Pressure/CPAP_activation'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit52_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','CPAP_pressure'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit52_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','CPAP_pressure',str2num(get(h,'String')));

function varargout = edit53_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_CPAP_start'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit53_Callback(h, eventdata, handles, varargin)
temp_t = str2num(get(h,'String'));
set(h,'Value',temp_t+evalin('base','resp_period_start'));
set(h,'String',num2str(get(h,'Value')));
assignin('base','t_CPAP_start',str2num(get(h,'String')));

function varargout = edit54_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','t_CPAP_duration'));
set(h,'String',num2str(get(h,'Value')));

function varargout = edit54_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
assignin('base','t_CPAP_duration',str2num(get(h,'String')));


% Removed by Limei on April 16, 2010.
% % --Mechanical Ventilator--
% function varargout = checkbox10_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','Mech_Vent_activation'));
% gain_file_name = ['PNEUMA/External Pressure/Mech_Vent_activation'];
% set_param(gain_file_name,'Gain',num2str(get(h,'Value')));
% 
% function varargout = checkbox10_Callback(h, eventdata, handles, varargin)
% gain_file_name = ['PNEUMA/External Pressure/Mech_Vent_activation'];
% set_param(gain_file_name,'Gain',num2str(get(h,'Value')));
% 
% function varargout = edit55_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','Mech_Vent_pressure'));
% set(h,'String',num2str(get(h,'Value')));
% 
% function varargout = edit55_Callback(h, eventdata, handles, varargin)
% set(h,'Value',str2num(get(h,'String')));
% assignin('base','Mech_Vent_pressure',str2num(get(h,'String')));
% 
% function varargout = edit56_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','t_Mech_Vent_start'));
% set(h,'String',num2str(get(h,'Value')));
% 
% function varargout = edit56_Callback(h, eventdata, handles, varargin)
% temp_t = str2num(get(h,'String'));
% set(h,'Value',temp_t+evalin('base','resp_period_start'));
% set(h,'String',num2str(get(h,'Value')));
% assignin('base','t_Mech_Vent_start',str2num(get(h,'String')));
% 
% function varargout = edit57_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','t_Mech_Vent_duration'));
% set(h,'String',num2str(get(h,'Value')));
% 
% function varargout = edit57_Callback(h, eventdata, handles, varargin)
% set(h,'Value',str2num(get(h,'String')));
% assignin('base','t_Mech_Vent_duration',str2num(get(h,'String')));


% --------------------------------------------------------------------
function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)
delete(handles.figure1);
assignin('base','man_fig_num',0);

% --------------------------------------------------------------------
function varargout = figure1_CloseRequestFcn(h, eventdata, handles, varargin)
delete(handles.figure1);
assignin('base','man_fig_num',0);


function varargout = checkbox11_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Hypercapnia_activation'));
gain_file_name = ['PNEUMA/Respiratory System/Gas Exchange/DEAD SPACE/'...
        'CO2 DEAD SPACE/CO2 Partial Pressure/Hypercapnia_activation'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));
% --- Executes on button press in checkbox11.
function checkbox11_Callback(h, eventdata, handles)
gain_file_name = ['PNEUMA/Respiratory System/Gas Exchange/DEAD SPACE/'...
        'CO2 DEAD SPACE/CO2 Partial Pressure/Hypercapnia_activation'];
set_param(gain_file_name,'Value',num2str(get(handles.checkbox11,'Value')));

function varargout = checkbox12_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Isocapnia_activation'));
gain_file_name = ['PNEUMA/Respiratory System/Gas Exchange/DEAD SPACE/'...
        'CO2 DEAD SPACE/CO2 Partial Pressure/Isocapnia_activation'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));
% --- Executes on button press in checkbox12.
function checkbox12_Callback(hObject, eventdata, handles)
gain_file_name = ['PNEUMA/Respiratory System/Gas Exchange/DEAD SPACE/'...
        'CO2 DEAD SPACE/CO2 Partial Pressure/Isocapnia_activation'];
set_param(gain_file_name,'Value',num2str(get(handles.checkbox12,'Value')));


% --- Executes on button press in checkbox13.
function checkbox13_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (get(hObject,'Value')) == get(hObject,'MAX')
            %Checkbox is checked status
    gain_file_name='PNEUMA/Metabolic Control/Glucose Insulin Interventions/Gblock';
    set_param(gain_file_name,'Gain',num2str(get(handles.checkbox13,'Value')));
    assignin('base','DietBlock',0);
    assignin('base','GI_CTRL',2);
else
    assignin('base','DietBlock',1);
end
%     
% Hint: get(hObject,'Value') returns toggle state of checkbox13

% --- Executes during object creation, after setting all properties.
% function checkbox14_CreateFcn(hObject, eventdata, handles)
% set(hObject,'Value',evalin('base','Iblock'));
% gain_file_name='PNEUMA/Metabolic Control/Glucose Insulin Interventions/Iblock';
%     set_param(gain_file_name,'Gain',num2str(get(handles.checkbox14,'Value')));

% --- Executes on button press in checkbox14.
function checkbox14_Callback(hObject, eventdata, handles)
if (get(hObject,'Value')) == get(hObject,'MAX')
    gain_file_name='PNEUMA/Metabolic Control/Glucose Insulin Interventions/Iblock';
    set_param(gain_file_name,'Gain',num2str(get(handles.checkbox14,'Value')));
end

% Hint: get(hObject,'Value') returns toggle state of checkbox14

%---Hyperglycemia G+125, Ib =6
% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
if (get(hObject,'Value')) == get(hObject,'MAX')
            %Radio Button is selected status
    assignin('base','Clamp_class',1);
    assignin('base','Gh',125+97);
    assignin('base','Gb',98);
    assignin('base','Ib',6);
    assignin('base','Xb',0);
    assignin('base','Gclamp',125);
    assignin('base','Gprim1',0.959/60);
    assignin('base','Gprim2',0.7424/60);
else
    assignin('base','Clamp_class',2);
    assignin('base','Gh',125); 
    assignin('base','Gb',124.8);
    assignin('base','Ib',16.6);
    assignin('base','Xb',0.005*16.6);
    assignin('base','Gclamp',125);
    assignin('base','Gprim1',1.4/60);
    assignin('base','Gprim2',0.7465/60);

end

% Hint: get(hObject,'Value') returns toggle state of radiobutton1

% ---Euglycemia Gb=98, Ib=6
% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
if (get(hObject,'Value')) == get(hObject,'MAX')
            %Radio Button is selected status
    assignin('base','Clamp_class',2);
    assignin('base','Gh',125);
    assignin('base','Gb',98);
    assignin('base','Ib',6);
    assignin('base','Xb',0);
    assignin('base','Gclamp',0);
    assignin('base','Gprim1',0.959/60);
    assignin('base','Gprim2',0.7424/60);
%     assignin('base','Gprim3',0.9/60);
else
    assignin('base','Gb',124.8);
    assignin('base','Ib',16.6);
    assignin('base','Xb',0.005*16.6);
    assignin('base','Gclamp',125);
    assignin('base','Gprim1',1.4/60);
    assignin('base','Gprim2',0.7465/60);

end

% ---Hyperinsulinemic Euglycemia Ib+20
% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
if (get(hObject,'Value')) == get(hObject,'MAX')
            %Radio Button is selected status
    assignin('base','Clamp_class',2);
    assignin('base','Gh',125);
    assignin('base','Gb',98);
    assignin('base','Ib',6);
    assignin('base','Xb',0);
    assignin('base','Gclamp',0);
    assignin('base','Gprim1',0.959/60);
    assignin('base','Gprim2',0.7424/60);
    assignin('base','In_gain',65.461999999997346/60);
    assignin('base','Gprim3',0.58/60);
else
    assignin('base','Gb',124.8);
    assignin('base','Ib',16.6);
    assignin('base','Xb',0.005*16.6);
    assignin('base','Gclamp',125);
    assignin('base','Gprim1',1.4/60);
    assignin('base','Gprim2',0.7465/60);
    assignin('base','In_gain',320/60);%In_gain=350/60;
    assignin('base','Gprim3',0.58/60);
end

% ---Hyperinsulinemic Euglycemia Ib+30
% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
if (get(hObject,'Value')) == get(hObject,'MAX')
            %Radio Button is selected status
    assignin('base','Clamp_class',2);
    assignin('base','Gh',125);
    assignin('base','Gb',98);
    assignin('base','Ib',6);
    assignin('base','Xb',0);
    assignin('base','Gclamp',0);
    assignin('base','Gprim1',0.959/60);
    assignin('base','Gprim2',0.7424/60);
    assignin('base','In_gain',98.192999999997170/60);
    assignin('base','Gprim3',0.88/60);
else
    assignin('base','Gb',124.8);
    assignin('base','Ib',16.6);
    assignin('base','Xb',0.005*16.6);
    assignin('base','Gclamp',125);
    assignin('base','Gprim1',1.4/60);
    assignin('base','Gprim2',0.7465/60);
    assignin('base','In_gain',320/60);%In_gain=350/60;
    assignin('base','Gprim3',0.58/60);
end

% ---Hyperinsulinemic Euglycemia Ib+100
% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
if (get(hObject,'Value')) == get(hObject,'MAX')
            %Radio Button is selected status
    assignin('base','Clamp_class',2);
    assignin('base','Gh',125);
    assignin('base','Gb',98);
    assignin('base','Ib',6);
    assignin('base','Xb',0);
    assignin('base','Gclamp',0);
    assignin('base','Gprim1',0.959/60);
    assignin('base','Gprim2',0.7424/60);
    assignin('base','In_gain',3.273100000000097e+002/60);
    assignin('base','Gprim3',1/60);
else
    assignin('base','Gb',124.8);
    assignin('base','Ib',16.6);
    assignin('base','Xb',0.005*16.6);
    assignin('base','Gclamp',125);
    assignin('base','Gprim1',1.4/60);
    assignin('base','Gprim2',0.7465/60);
    assignin('base','In_gain',320/60);%In_gain=350/60;
    assignin('base','Gprim3',0.58/60);
end
