function varargout = constant_parameters_6(varargin)
% CONSTANT_PARAMETERS_6 Application M-file for constant_parameters_6.fig
%    FIG = CONSTANT_PARAMETERS_6 launch constant_parameters_6 GUI.
%    CONSTANT_PARAMETERS_6('callback_name', ...) invoke the named callback.

% Last Modified by Limei Cheng within GUIDE of Matlab 7.2 30-Nov-2007 15:40:10

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');
 % Use system color scheme for figure:
set(fig,'Color',get(0,'DefaultUicontrolBackgroundColor'));

   
	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
        
    % get constant parameters value from the base workspace
    % and assign to each parameters handles and show it on the GUI panel
    
    set(handles.edit1,'Value',evalin('base','Pn'));
    set(handles.edit1,'String',num2str(get(handles.edit1,'Value')));
	
    set(handles.edit2,'Value',evalin('base','k_cs'));
    set(handles.edit2,'String',num2str(get(handles.edit2,'Value')));
    
    set(handles.edit3,'Value',evalin('base','fcs_min'));
    set(handles.edit3,'String',num2str(get(handles.edit3,'Value')));
	
    set(handles.edit4,'Value',evalin('base','fcs_max'));
    set(handles.edit4,'String',num2str(get(handles.edit4,'Value')));
    
    set(handles.edit5,'Value',evalin('base','k_s'));
    set(handles.edit5,'String',num2str(get(handles.edit5,'Value')));
	
    set(handles.edit6,'Value',evalin('base','fs_zero'));
    set(handles.edit6,'String',num2str(get(handles.edit6,'Value')));
    
    set(handles.edit7,'Value',evalin('base','fs_inf'));
    set(handles.edit7,'String',num2str(get(handles.edit7,'Value')));
	
    set(handles.edit8,'Value',evalin('base','fcs_zero'));
    set(handles.edit8,'String',num2str(get(handles.edit8,'Value')));
    
    set(handles.edit9,'Value',evalin('base','k_p'));
    set(handles.edit9,'String',num2str(get(handles.edit9,'Value')));
	
    set(handles.edit10,'Value',evalin('base','fp_zero'));
    set(handles.edit10,'String',num2str(get(handles.edit10,'Value')));
    
    set(handles.edit11,'Value',evalin('base','fp_inf'));
    set(handles.edit11,'String',num2str(get(handles.edit11,'Value')));
	
%     set(handles.edit12,'Value',evalin('base','initx(7)'));%HP_basal
%     set(handles.edit12,'String',num2str(get(handles.edit12,'Value')));
%     
    set(handles.edit13,'Value',evalin('base','Dx(7)'));%ftbs_delaytime
    set(handles.edit13,'String',num2str(get(handles.edit13,'Value')));
	
    set(handles.edit14,'Value',evalin('base','ftbs_min'));
    set(handles.edit14,'String',num2str(get(handles.edit14,'Value')));
    
    set(handles.edit15,'Value',evalin('base','Dx(8)'));%ftp_delaytime
    set(handles.edit15,'String',num2str(get(handles.edit15,'Value')));
	
    set(handles.edit16,'Value',evalin('base','toux(8)'));%tau_p
    set(handles.edit16,'String',num2str(get(handles.edit16,'Value')));
    
    set(handles.edit17,'Value',evalin('base','toux(7)'));%tau_bs
    set(handles.edit17,'String',num2str(get(handles.edit17,'Value')));
	
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    set(handles.edit30,'Value',evalin('base','HP_basal'));%HP_basal
    set(handles.edit30,'String',num2str(get(handles.edit30,'Value')));
	
    set(handles.edit31,'Value',evalin('base','G_Emaxlv'));%Ghc
    set(handles.edit31,'String',num2str(get(handles.edit31,'Value')));
    
 	
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
    set(handles.edit35,'Value',evalin('base','Inhale'));
    set(handles.edit35,'String',num2str(get(handles.edit35,'Value')));
    
    set(handles.edit36,'Value',evalin('base','TImean'));
    set(handles.edit36,'String',num2str(get(handles.edit36,'Value')));
	
    set(handles.edit37,'Value',evalin('base','TTmean'));
    set(handles.edit37,'String',num2str(get(handles.edit37,'Value')));
    
    set(handles.edit38,'Value',evalin('base','Vdead1'));
    set(handles.edit38,'String',num2str(get(handles.edit38,'Value')));
	
    set(handles.edit39,'Value',evalin('base','Vdead2'));
    set(handles.edit39,'String',num2str(get(handles.edit39,'Value')));
    
    set(handles.edit40,'Value',evalin('base','Vdead3'));
    set(handles.edit40,'String',num2str(get(handles.edit40,'Value')));
	
    set(handles.edit41,'Value',evalin('base','Vdead4'));
    set(handles.edit41,'String',num2str(get(handles.edit41,'Value')));
    
    set(handles.edit42,'Value',evalin('base','Vdead5'));
    set(handles.edit42,'String',num2str(get(handles.edit42,'Value')));
	
    set(handles.edit43,'Value',evalin('base','VLCO2'));
    set(handles.edit43,'String',num2str(get(handles.edit43,'Value')));
    
    set(handles.edit44,'Value',evalin('base','VLO2'));
    set(handles.edit44,'String',num2str(get(handles.edit44,'Value')));
	
    set(handles.edit45,'Value',evalin('base','VTCO2'));
    set(handles.edit45,'String',num2str(get(handles.edit45,'Value')));
    
    set(handles.edit46,'Value',evalin('base','VTO2'));
    set(handles.edit46,'String',num2str(get(handles.edit46,'Value')));
	
    set(handles.edit47,'Value',evalin('base','MRCO2'));
    set(handles.edit47,'String',num2str(get(handles.edit47,'Value')));
    
    set(handles.edit48,'Value',evalin('base','MRO2'));
    set(handles.edit48,'String',num2str(get(handles.edit48,'Value')));
	
    set(handles.edit49,'Value',evalin('base','MRbCO2'));
    set(handles.edit49,'String',num2str(get(handles.edit49,'Value')));
    
    set(handles.edit50,'Value',evalin('base','Ic'));
    set(handles.edit50,'String',num2str(get(handles.edit50,'Value')));
	
    set(handles.edit51,'Value',evalin('base','IpCO2'));
    set(handles.edit51,'String',num2str(get(handles.edit51,'Value')));
    
    set(handles.edit52,'Value',evalin('base','IpO2'));
    set(handles.edit52,'String',num2str(get(handles.edit52,'Value')));
	
    set(handles.edit53,'Value',evalin('base','Ivent'));
    set(handles.edit53,'String',num2str(get(handles.edit53,'Value')));
    
    set(handles.edit58,'Value',evalin('base','SbCO2'));
    set(handles.edit58,'String',num2str(get(handles.edit58,'Value')));
	
    set(handles.edit59,'Value',evalin('base','SCO2'));
    set(handles.edit59,'String',num2str(get(handles.edit59,'Value')));
    
    set(handles.edit60,'Value',evalin('base','h'));
    set(handles.edit60,'String',num2str(get(handles.edit60,'Value')));
	
    set(handles.edit61,'Value',evalin('base','kaw1'));
    set(handles.edit61,'String',num2str(get(handles.edit61,'Value')));
    
    set(handles.edit62,'Value',evalin('base','kaw2'));
    set(handles.edit62,'String',num2str(get(handles.edit62,'Value')));
	
    set(handles.edit63,'Value',evalin('base','E_CW'));
    set(handles.edit63,'String',num2str(get(handles.edit63,'Value')));
    
    set(handles.edit64,'Value',evalin('base','E_L'));
    set(handles.edit64,'String',num2str(get(handles.edit64,'Value')));
	
    set(handles.edit65,'Value',evalin('base','RC'));
    set(handles.edit65,'String',num2str(get(handles.edit65,'Value')));
    
    set(handles.edit66,'Value',evalin('base','R_AW'));
    set(handles.edit66,'String',num2str(get(handles.edit66,'Value')));
	
    set(handles.edit67,'Value',evalin('base','R_CW'));
    set(handles.edit67,'String',num2str(get(handles.edit67,'Value')));
    
    set(handles.edit68,'Value',evalin('base','R_L'));
    set(handles.edit68,'String',num2str(get(handles.edit68,'Value')));
	
    set(handles.edit69,'Value',evalin('base','VC'));
    set(handles.edit69,'String',num2str(get(handles.edit69,'Value')));
    
    set(handles.edit70,'Value',evalin('base','s'));
    set(handles.edit70,'String',num2str(get(handles.edit70,'Value')));
	
    set(handles.edit71,'Value',evalin('base','a1'));
    set(handles.edit71,'String',num2str(get(handles.edit71,'Value')));
    
    set(handles.edit72,'Value',evalin('base','a2'));
    set(handles.edit72,'String',num2str(get(handles.edit72,'Value')));
	
    set(handles.edit73,'Value',evalin('base','alpha1'));
    set(handles.edit73,'String',num2str(get(handles.edit73,'Value')));
    
    set(handles.edit74,'Value',evalin('base','alpha2'));
    set(handles.edit74,'String',num2str(get(handles.edit74,'Value')));
	
    set(handles.edit75,'Value',evalin('base','K1'));
    set(handles.edit75,'String',num2str(get(handles.edit75,'Value')));
    
    set(handles.edit76,'Value',evalin('base','K2'));
    set(handles.edit76,'String',num2str(get(handles.edit76,'Value')));
	
    set(handles.edit77,'Value',evalin('base','beta1'));
    set(handles.edit77,'String',num2str(get(handles.edit77,'Value')));
    
    set(handles.edit78,'Value',evalin('base','beta2'));
    set(handles.edit78,'String',num2str(get(handles.edit78,'Value')));
	
    set(handles.edit79,'Value',evalin('base','C1'));
    set(handles.edit79,'String',num2str(get(handles.edit79,'Value')));
    
    set(handles.edit80,'Value',evalin('base','C2'));
    set(handles.edit80,'String',num2str(get(handles.edit80,'Value')));
	
    set(handles.edit81,'Value',evalin('base','lambda'));
    set(handles.edit81,'String',num2str(get(handles.edit81,'Value')));
    
    set(handles.edit82,'Value',evalin('base','Z'));
    set(handles.edit82,'String',num2str(get(handles.edit82,'Value')));
	
    set(handles.edit94,'Value',evalin('base','T1'));
    set(handles.edit94,'String',num2str(get(handles.edit94,'Value')));
    
    set(handles.edit95,'Value',evalin('base','T2'));
    set(handles.edit95,'String',num2str(get(handles.edit95,'Value')));
	
    set(handles.edit96,'Value',evalin('base','QdBo'));
    set(handles.edit96,'String',num2str(get(handles.edit96,'Value')));
    
    % Added by Limei on April 16, 2010
    % --Metabolic Control---
    set(handles.edit121,'Value',evalin('base','Gb'));
    set(handles.edit121,'String',num2str(get(handles.edit121,'Value')));

    set(handles.edit122,'Value',evalin('base','Ib'));
    set(handles.edit122,'String',num2str(get(handles.edit122,'Value')));
    
    set(handles.edit123,'Value',evalin('base','Fb'));
    set(handles.edit123,'String',num2str(get(handles.edit123,'Value')));
    
    set(handles.edit128,'Value',evalin('base','Ce_0'));
    set(handles.edit128,'String',num2str(get(handles.edit128,'Value')));
    
    set(handles.edit124,'Value',evalin('base','Xb'));
    set(handles.edit124,'String',num2str(get(handles.edit124,'Value')));
    
    set(handles.edit125,'Value',evalin('base','Zb'));
    set(handles.edit125,'String',num2str(get(handles.edit125,'Value')));
    
    set(handles.edit126,'Value',evalin('base','Gamma'));
    set(handles.edit126,'String',num2str(get(handles.edit126,'Value')));
    
    set(handles.edit127,'Value',evalin('base','n'));
    set(handles.edit127,'String',num2str(get(handles.edit127,'Value')));
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    
    guidata(fig, handles);
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


%| ABOUT CALLBACKS:
%| GUIDE automatically appends subfunction prototypes to this file, and 
%| sets objects' callback properties to call them through the FEVAL 
%| switchyard above. This comment describes that mechanism.
%|
%| Each callback subfunction declaration has the following form:
%| <SUBFUNCTION_NAME>(H, EVENTDATA, HANDLES, VARARGIN)
%|
%| The subfunction name is composed using the object's Tag and the 
%| callback type separated by '_', e.g. 'slider2_Callback',
%| 'figure1_CloseRequestFcn', 'axis1_ButtondownFcn'.
%|
%| H is the callback object's handle (obtained using GCBO).
%|
%| EVENTDATA is empty, but reserved for future use.
%|
%| HANDLES is a structure containing handles of components in GUI using
%| tags as fieldnames, e.g. handles.figure1, handles.slider2. This
%| structure is created at GUI startup using GUIHANDLES and stored in
%| the figure's application data using GUIDATA. A copy of the structure
%| is passed to each callback.  You can store additional information in
%| this structure at GUI startup, and you can change the structure
%| during callbacks.  Call guidata(h, handles) after changing your
%| copy to replace the stored original so that subsequent callbacks see
%| the updates. Type "help guihandles" and "help guidata" for more
%| information.
%|
%| VARARGIN contains any extra arguments you have passed to the
%| callback. Specify the extra arguments by editing the callback
%| property in the inspector. By default, GUIDE sets the property to:
%| <MFILENAME>('<SUBFUNCTION_NAME>', gcbo, [], guidata(gcbo))
%| Add any extra arguments after the last argument, before the final
%| closing parenthesis.


% --Carotid Baroreceptors--
% --Pn--
function varargout = edit1_Callback(h, eventdata, handles, varargin)
assignin('base','Pn',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit1_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Pn'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','center pressure for carotid sigmoidal function');

% --k_cs--
function varargout = edit2_Callback(h, eventdata, handles, varargin)
assignin('base','k_cs',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit2_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','k_cs'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','parameter to control carotid sigmoidal slope');

% --fcs_min--
function varargout = edit3_Callback(h, eventdata, handles, varargin)
assignin('base','fcs_min',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit3_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','fcs_min'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','lower threshold for carotid sigmoidal function');
    
% --fcs_max--
function varargout = edit4_Callback(h, eventdata, handles, varargin)
assignin('base','fcs_max',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit4_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','fcs_max'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','upper saturation for carotid sigmoidal function');

% --Sympathetic Response--
% --k_s--
function varargout = edit5_Callback(h, eventdata, handles, varargin)
assignin('base','k_s',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit5_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','k_s'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','parameters to control symp-response decaying rate');

% --fs_zero--
function varargout = edit6_Callback(h, eventdata, handles, varargin)
assignin('base','fs_zero',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit6_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','fs_zero'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','lower limit for the symp-response decay');

% --fs_inf--
function varargout = edit7_Callback(h, eventdata, handles, varargin)
assignin('base','fs_inf',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit7_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','fs_inf'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','upper limit for the symp-response decay');
    
% --Parasympathetic Response--
% --fcs_zero--
function varargout = edit8_Callback(h, eventdata, handles, varargin)
assignin('base','fcs_zero',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit8_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','fcs_zero'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','center point for the paresymp sigmoidal function');
    
% --k_p--
function varargout = edit9_Callback(h, eventdata, handles, varargin)
assignin('base','k_p',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit9_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','k_p'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','parameters to control parasymp sigmoidal slope');
    
% --fp_zero--
function varargout = edit10_Callback(h, eventdata, handles, varargin)
assignin('base','fp_zero',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit10_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','fp_zero'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','lower threshold of the parasymp sigmoidal function');

% --fp_inf--
function varargout = edit11_Callback(h, eventdata, handles, varargin)
assignin('base','fp_inf',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit11_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','fp_inf'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','upper saturation of the parasymp sigmoidal function');

% --SA Node--
% --HP_basal--
% function varargout = edit12_Callback(h, eventdata, handles, varargin)
% assignin('base','initx(7)',str2num(get(h,'String')));
% set(h,'Value',str2num(get(h,'String')));
% 
% function varargout = edit12_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','initx(7)'));
% set(h,'String',num2str(get(h,'Value')));
% set(h,'TooltipString','basal value of heart period');

% --total beta-symp response--
% --ftbs_delaytime--
function varargout = edit13_Callback(h, eventdata, handles, varargin)
assignin('base','Dx(7)',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit13_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Dx(7)'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','beta-symp response delay time');

% --ftbs_min--
function varargout = edit14_Callback(h, eventdata, handles, varargin)
assignin('base','ftbs_min',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit14_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','ftbs_min'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','lower limit of beta-symp log function');
 
% --tau_bs--
function varargout = edit17_Callback(h, eventdata, handles, varargin)
assignin('base','toux(7)',str2num(get(h,'String')));
set(h,'String',num2str(get(h,'Value')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit17_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','toux(7)'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','beta-symp response time constant');

% --total parasymp response--
% --ftp_delaytime--
function varargout = edit15_Callback(h, eventdata, handles, varargin)
assignin('base','Dx(8)',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit15_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Dx(8)'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','parasymp response delay time');

% --tau_p--
function varargout = edit16_Callback(h, eventdata, handles, varargin)
assignin('base','toux(8)',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit16_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','toux(8)'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','parasymp response time constant');
    
% --Peripheral Resistance--    
% --TPR_0--
function varargout = edit23_Callback(h, eventdata, handles, varargin)
assignin('base','TPR_0',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit23_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','TPR_0'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','nominal TPR change');

% --ftas_delaytime--
function varargout = edit24_Callback(h, eventdata, handles, varargin)
assignin('base','fas_delaytime',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit24_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','fas_delaytime'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','alpha-symp response delay time');
    
% --tau_as--
function varargout = edit25_Callback(h, eventdata, handles, varargin)
assignin('base','tau_as',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit25_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','tau_as'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','alpha-symp response time constant');
    
% --ftas_min--
function varargout = edit26_Callback(h, eventdata, handles, varargin)
assignin('base','fas_min',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit26_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','fas_min'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','lower limit of alpha-symp log function');

% --Venous Return--
% --VR_delay--
function varargout = edit27_Callback(h, eventdata, handles, varargin)
assignin('base','VR_delay',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit27_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','VR_delay'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','venous return delay time');

% --Gvr--
function varargout = edit28_Callback(h, eventdata, handles, varargin)
assignin('base','Gvr',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit28_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Gvr'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','gain for venous return function');
    
% --tau_vr--
function varargout = edit29_Callback(h, eventdata, handles, varargin)
assignin('base','tau_vr',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit29_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','tau_vr'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','venous return time constant');
    
% --Heart Period and Contractility--
% --Heart Period--
function varargout = edit30_Callback(h, eventdata, handles, varargin)
assignin('base','HP_basal',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit30_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','HP_basal'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','basal value of heart period ');

% --Gct--
function varargout = edit31_Callback(h, eventdata, handles, varargin)
assignin('base','G_Emaxlv',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit31_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','G_Emaxlv'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','main gain for heart contractility function');
    
% --tau_ct--
%function varargout = edit32_Callback(h, eventdata, handles, varargin)
%assignin('base','tau_hc',str2num(get(h,'String')));
%set(h,'Value',str2num(get(h,'String')));

%function varargout = edit32_CreateFcn(h, eventdata, handles, varargin)
%set(h,'Value',evalin('base','tau_hc'));
%set(h,'String',num2str(get(h,'Value')));
%set(h,'TooltipString','heart contactility time constant');
    
% --Circulation--
% --TPR--
%function varargout = edit33_Callback(h, eventdata, handles, varargin)
%assignin('base','R_TPR',str2num(get(h,'String')));
%set(h,'Value',str2num(get(h,'String')));

%function varargout = edit33_CreateFcn(h, eventdata, handles, varargin)
%set(h,'Value',evalin('base','R_TPR'));
%set(h,'String',num2str(get(h,'Value')));
%set(h,'TooltipString','nominal TPR');
    
% --Cart--
function varargout = edit34_Callback(h, eventdata, handles, varargin)
assignin('base','Cart',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit34_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Cart'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','arterial compliance');
    
% --Inhale--
function varargout = edit35_Callback(h, eventdata, handles, varargin)
assignin('base','Inhale',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit35_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Inhale'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','boolean variable for inhalation');
    
% --TImean--
function varargout = edit36_Callback(h, eventdata, handles, varargin)
assignin('base','TImean',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit36_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','TImean'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','inspiratory period');
    
% --TTmean--
function varargout = edit37_Callback(h, eventdata, handles, varargin)
assignin('base','TTmean',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit37_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','TTmean'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','breathing period');

% --Gas Exchange--
% --Dead Space--
% --Vdead1--
function varargout = edit38_Callback(h, eventdata, handles, varargin)
assignin('base','Vdead1',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit38_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Vdead1'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','first dead space compartment volume');
    
% --Vdead2--
function varargout = edit39_Callback(h, eventdata, handles, varargin)
assignin('base','Vdead2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit39_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Vdead2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','second dead space compartment volume');
    
% --Vdead3--
function varargout = edit40_Callback(h, eventdata, handles, varargin)
assignin('base','Vdead3',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit40_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Vdead3'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','third dead space compartment volume');

% --Vdead4--
function varargout = edit41_Callback(h, eventdata, handles, varargin)
assignin('base','Vdead4',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit41_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Vdead4'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','fourth dead space compartment volume');

% --Vdead5--
function varargout = edit42_Callback(h, eventdata, handles, varargin)
assignin('base','Vdead5',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit42_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Vdead5'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','fifth dead space compartment volume');

% --Lungs--
% --VLCO2--
function varargout = edit43_Callback(h, eventdata, handles, varargin)
assignin('base','VLCO2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit43_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','VLCO2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','lung storage volume for CO2');
    
% --VLO2--
function varargout = edit44_Callback(h, eventdata, handles, varargin)
assignin('base','VLO2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit44_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','VLO2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','lung storage volume for O2');

% --lambda--
function varargout = edit81_Callback(h, eventdata, handles, varargin)
assignin('base','lambda',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit81_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','lambda'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','conversion factor between concentration and pressure');

% --s--
function varargout = edit70_Callback(h, eventdata, handles, varargin)
assignin('base','s',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit70_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','s'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','pulmonary shunt');

% --Body tissues compartment--    
% --VTCO2--
function varargout = edit45_Callback(h, eventdata, handles, varargin)
assignin('base','VTCO2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit45_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','VTCO2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','body tissues storage volume for CO2');
    
% --VTO2--
function varargout = edit46_Callback(h, eventdata, handles, varargin)
assignin('base','VTO2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit46_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','VTO2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','body tissues storage volume for O2');
    
% --MRCO2--
function varargout = edit47_Callback(h, eventdata, handles, varargin)
assignin('base','MRCO2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit47_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','MRCO2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','CO2 metabolic production rate in body tissues');
    
% --MRO2--
function varargout = edit48_Callback(h, eventdata, handles, varargin)
assignin('base','MRO2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit48_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','MRO2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','O2 metabolic consumption rate in body tissues');

% --Central Chemoreceptors--
% --MRbCO2--
function varargout = edit49_Callback(h, eventdata, handles, varargin)
assignin('base','MRbO2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit49_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','MRbCO2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','CO2 metabolic production rate in the brain tissues');
    
% --SbCO2--
function varargout = edit58_Callback(h, eventdata, handles, varargin)
assignin('base','SbCO2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit58_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','SbCO2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','dissociation slope for CO2 in brain tissues');
    
% --SCO2--
function varargout = edit59_Callback(h, eventdata, handles, varargin)
assignin('base','SCO2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit59_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','SCO2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','dissociation slope for CO2 in blood');
    
% --h--
function varargout = edit60_Callback(h, eventdata, handles, varargin)
assignin('base','h',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit60_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','h'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','constant for dog-leg effect');

% --QdBo--
function varargout = edit96_Callback(h, eventdata, handles, varargin)
assignin('base','QdBo',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit96_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','T2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','nominal cerebral flow');

% --Ventilatory Response--
% --Ic--
function varargout = edit50_Callback(h, eventdata, handles, varargin)
assignin('base','Ic',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit50_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Ic'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','central apneic threshold');
    
% --IpCO2--
function varargout = edit51_Callback(h, eventdata, handles, varargin)
assignin('base','IpCO2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit51_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','IpCO2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','peripheral CO2 apneic threshold');
    
% --IpO2--
function varargout = edit52_Callback(h, eventdata, handles, varargin)
assignin('base','IpO2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit52_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','IpO2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','peripheral O2 apneic threshold');
    
% --State Change--
% --Ivent--
function varargout = edit53_Callback(h, eventdata, handles, varargin)
assignin('base','Ivent',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit53_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Ivent'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','arousal threshold');
    
% --Muscular Pressure--
% --RC--
function varargout = edit65_Callback(h, eventdata, handles, varargin)
assignin('base','RC',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit65_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','RC'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','respiratory muscle response time');
 
% --VC--
function varargout = edit69_Callback(h, eventdata, handles, varargin)
assignin('base','VC',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit69_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','VC'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','vital capacity');

% --Respiratory Pressures--    
% --kaw1--
function varargout = edit61_Callback(h, eventdata, handles, varargin)
assignin('base','kaw1',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit61_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','kaw1'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','constant for airway pressure');
    
% --kaw2--
function varargout = edit62_Callback(h, eventdata, handles, varargin)
assignin('base','kaw2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit62_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','kaw2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','constant for airway pressure');

% --E_CW--
function varargout = edit63_Callback(h, eventdata, handles, varargin)
assignin('base','E_CW',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit63_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','E_CW'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','chest wall elastance');

% --E_L--
function varargout = edit64_Callback(h, eventdata, handles, varargin)
assignin('base','E_L',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit64_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','E_L'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','lung elastance');

% --R_AW--
function varargout = edit66_Callback(h, eventdata, handles, varargin)
assignin('base','R_AW',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit66_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','R_AW'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','airway resistance');
    
% --R_CW--
function varargout = edit67_Callback(h, eventdata, handles, varargin)
assignin('base','R_CW',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit67_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','R_CW'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','chest wall resistance');
    
% --R_L--
function varargout = edit68_Callback(h, eventdata, handles, varargin)
assignin('base','R_L',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit68_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','R_L'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','lung resistance');

% --Dissociation--
% --a1--
function varargout = edit71_Callback(h, eventdata, handles, varargin)
assignin('base','a1',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit71_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','a1'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','parameter in O2 dissociation equation');
    
% --a2--
function varargout = edit72_Callback(h, eventdata, handles, varargin)
assignin('base','a2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit72_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','a2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','parameter in CO2 dissocation equation');
    
% --alpha1--
function varargout = edit73_Callback(h, eventdata, handles, varargin)
assignin('base','alpha1',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit73_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','alpha1'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','parameter in O2 dissocation equation');
    
% --alpha2--
function varargout = edit74_Callback(h, eventdata, handles, varargin)
assignin('base','alpha2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit74_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','alpha2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','parameter in CO2 dissocation equation');
    
% --K1--
function varargout = edit75_Callback(h, eventdata, handles, varargin)
assignin('base','K1',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit75_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','K1'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','parameter in O2 dissocation equation');
    
% --K2--
function varargout = edit76_Callback(h, eventdata, handles, varargin)
assignin('base','K2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit76_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','K2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','parameter in CO2 dissocation equation');
    
% --beta1--
function varargout = edit77_Callback(h, eventdata, handles, varargin)
assignin('base','beta1',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit77_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','beta1'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','parameter in O2 dissocation equation');
    
% --beta2--
function varargout = edit78_Callback(h, eventdata, handles, varargin)
assignin('base','beta2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit78_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','beta2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','parameter in CO2 dissocation equation');
    
% --C1--
function varargout = edit79_Callback(h, eventdata, handles, varargin)
assignin('base','C1',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit79_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','C1'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','maximum concentration of hemoglobin-bound oxygen');
    
% --C2--
function varargout = edit80_Callback(h, eventdata, handles, varargin)
assignin('base','C2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit80_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','C2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','maximum CO2 concentration');

% --Z--
function varargout = edit82_Callback(h, eventdata, handles, varargin)
assignin('base','Z',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit82_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Z'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','molar conversion factor');


% --Cardiovascular Mixing--
% --T1--
function varargout = edit94_Callback(h, eventdata, handles, varargin)
assignin('base','T1',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit94_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','T1'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','time constant for PA to Pa interaction');

% --T2--
function varargout = edit95_Callback(h, eventdata, handles, varargin)
assignin('base','T2',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function varargout = edit95_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','T2'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','time constant for PA to Pa interaction');


% this is for the "close" button which will reset the panel variable back
% to zero.
function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
delete(handles.figure1);
assignin('base','const_fig_num',0);


% All functions below will open individual Simulink subsystem when "Op"
% is click in the GUI panel.

function varargout = pushbutton3_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Cardiovascular System/Carotid Baroreceptor', 'force');

function varargout = pushbutton7_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Central Neural Control/Autonomic Control/Beta-Sympathetic '...
'Response'], 'force');
open_system(['PNEUMA/Central Neural Control/Autonomic Control/Alpha-Sympathetic '...
'Response'], 'force');

function varargout = pushbutton8_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Central Neural Control/Autonomic Control/Parasympathetic '...
'BaroResponse'], 'force');

function varargout = pushbutton9_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Cardiovascular System/TPR change');
open_system(['PNEUMA/Cardiovascular System/TPR change/TPR change '...
'modulates by alpha-sympathetic'], 'force');

function varargout = pushbutton10_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Cardiovascular System/SA-node and Autonomic Control'...
'/SA Node'], 'force');


% function varargout = pushbutton11_Callback(h, eventdata, handles, varargin)
% open_system('PNEUMA/Cardiovascular System', 'force');

function varargout = pushbutton12_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Cardiovascular System/SA-node and Autonomic Control'...
 '/SA Node'], 'force');
open_system(['PNEUMA/Cardiovascular System/SA-node and Autonomic Control'...
    '/Heart Emaxlv'], 'force');
% function varargout = pushbutton13_Callback(h, eventdata, handles, varargin)
% open_system('PNEUMA/Cardiovascular System/Circulatory Mechanics', 'force');

function varargout = pushbutton14_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Central Neural Control/VARIABLE RESPIRATORY RHYTHM1', 'force');

function varargout = pushbutton15_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Respiratory System/Respiratory_Mechanics/Respiratory '...
        'Muscles Activity1/Resp Muscle Reaction'], 'force');
open_system(['PNEUMA/Respiratory System/Respiratory_Mechanics/Respiratory '...
        'Muscles Activity1'], 'force');

function varargout = pushbutton16_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Respiratory System/Respiratory_Mechanics/Pleural_Pressure1', 'force');
open_system('PNEUMA/Respiratory System/Respiratory_Mechanics/Pleural_Pressure1/Pa', 'force');
open_system('PNEUMA/Respiratory System/Respiratory_Mechanics/Pleural_Pressure1/Pcw', 'force');

function varargout = pushbutton17_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Respiratory System/Gas Exchange/DEAD SPACE', 'force');
open_system(['PNEUMA/Respiratory System/Gas Exchange/DEAD SPACE'...
        '/CO2 DEAD SPACE'], 'force');
open_system(['PNEUMA/Respiratory System/Gas Exchange/DEAD SPACE'...
        '/CO2 DEAD SPACE/Pd(1)CO2'], 'force');

function varargout = pushbutton18_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Respiratory System/Gas Exchange/GAS EXCHANGE '...
        'IN THE LUNGS'], 'force');
open_system(['PNEUMA/Respiratory System/Gas Exchange/GAS EXCHANGE '...
        'IN THE LUNGS/CO2 Gas Exchange in the Lungs'], 'force');
open_system(['PNEUMA/Respiratory System/Gas Exchange/GAS EXCHANGE '...
        'IN THE LUNGS/O2 Gas Exchange in the Lungs'], 'force');

function varargout = pushbutton19_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Respiratory System/Gas Exchange/Cardiovascular '...
        'Mixing and Convection'], 'force');
open_system(['PNEUMA/Respiratory System/Gas Exchange/Cardiovascular '...
        'Mixing and Convection/CO2 Cardiovascular Mixing and Convection Effects'], 'force');
open_system(['PNEUMA/Respiratory System/Gas Exchange/Cardiovascular '...
        'Mixing and Convection/O2 Cardiovascular Mixing and Convection Effects'], 'force');

function varargout = pushbutton20_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Respiratory System/Gas Exchange/Dissociation', 'force');

function varargout = pushbutton21_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Respiratory System/Gas Exchange/BODY TISSUES '...
        'COMPARTMENT'], 'force');
open_system(['PNEUMA/Respiratory System/Gas Exchange/BODY TISSUES '...
        'COMPARTMENT/Body Tissues Compartment for CO2'], 'force');
open_system(['PNEUMA/Respiratory System/Gas Exchange/BODY TISSUES '...
        'COMPARTMENT/Body Tissues Compartment for O2'], 'force');

function varargout = pushbutton22_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Central Neural Control/VENTILATORY '...
'DRIVE (chemical)'], 'force');

function varargout = pushbutton23_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Respiratory System/Gas Exchange/BRAIN COMPARTMENT','force');
open_system('PNEUMA/Respiratory System/Gas Exchange/VARIATION OF CEREBRAL BLOOD FLOW With PaCO2', 'force');

function varargout = pushbutton24_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Respiratory System/Upper_Airway_Mechanism', 'force');


function varargout = figure1_CloseRequestFcn(h, eventdata, handles, varargin)
delete(handles.figure1);
assignin('base','const_fig_num',0);


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
open_system('PNEUMA/Respiratory System/Gas Exchange','force');


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
open_system('PNEUMA/Respiratory System/Respiratory_Mechanics', 'force');


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
open_system('PNEUMA/Metabolic Control', 'force');


function edit121_Callback(h, eventdata, handles)
assignin('base','Gb',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function edit121_CreateFcn(h, eventdata, handles)
set(h,'Value',evalin('base','Gb'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','basal level of plasma glucose concentration');



function edit122_Callback(h, eventdata, handles)
assignin('base','Ib',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function edit122_CreateFcn(h, eventdata, handles)
set(h,'Value',evalin('base','Ib'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','basal level of plasma insulin concentration');



function edit123_Callback(h, eventdata, handles)
assignin('base','Fb',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function edit123_CreateFcn(h, eventdata, handles)
set(h,'Value',evalin('base','Fb'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','basal level of plasma free fatty acid concentration');




function edit124_Callback(h, eventdata, handles)
assignin('base','Xb',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function edit124_CreateFcn(h, eventdata, handles)
set(h,'Value',evalin('base','Xb'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','basal level of remote plasma insulin concentration');




function edit125_Callback(h, eventdata, handles)
assignin('base','Zb',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function edit125_CreateFcn(h, eventdata, handles)
set(h,'Value',evalin('base','Zb'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','basal level of remote plasma free fatty acid concentration');



function edit126_Callback(h, eventdata, handles)
assignin('base','Gamma',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function edit126_CreateFcn(h, eventdata, handles)
set(h,'Value',evalin('base','Gamma'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','insulin sensitivity factor');




function edit127_Callback(h, eventdata, handles)
assignin('base','n',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function edit127_CreateFcn(h, eventdata, handles)
set(h,'Value',evalin('base','n'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','utilization rate for plasma insulin concentration');




function edit128_Callback(h, eventdata, handles)
assignin('base','Ce_0',str2num(get(h,'String')));
set(h,'Value',str2num(get(h,'String')));

function edit128_CreateFcn(h, eventdata, handles)
set(h,'Value',evalin('base','Ce_0'));
set(h,'String',num2str(get(h,'Value')));
set(h,'TooltipString','basal level of  plasma epinephrine concentration');


