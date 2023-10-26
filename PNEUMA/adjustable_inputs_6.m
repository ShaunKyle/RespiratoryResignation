function varargout = adjustable_inputs_6(varargin)
% ADJUSTABLE_INPUTS_6 Application M-file for adjustable_inputs_6.fig
%    FIG = ADJUSTABLE_INPUTS_6 launch adjustable_inputs_6 GUI.
%    ADJUSTABLE_INPUTS_6('callback_name', ...) invoke the named callback.

% Last Modified by Limei Cheng within GUIDE of MatlabR2007b 14-April-2010 23:03:43

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

% Use system color scheme for figure:
set(fig,'Color',get(0,'DefaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
    
    %set Gas sliders
    % --Gas_Rsp--
    set(handles.slider1,'Min',0);
    set(handles.slider1,'Value',evalin('base','Gas_Rsp'));
    set(handles.slider1,'Max',1);
    gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'TPR Change/Peri Circ Rsp/Gain_Rsp'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider1,'Value')));
    % --Gas_Rep--
    set(handles.slider24,'Min',0);
    set(handles.slider24,'Value',evalin('base','Gas_Rep'));
    set(handles.slider24,'Max',3);
    gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'TPR Change/Peri Circ Rep/Gain_Rep'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider24,'Value')));
  
    % --Gas_Rmp--
    set(handles.slider25,'Min',0);
    set(handles.slider25,'Value',evalin('base','Gas_Rmp'));
    set(handles.slider25,'Max',5);
    gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'TPR Change/Peri Circ Rmp/Gain_Rmp'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider25,'Value')));
    %%set ca_blocker checkbox
    %set(handles.checkbox1,'Value',evalin('base','a_blocker'));
    %gain_file_name = ['PNEUMA/Cardiovascular System/TPR change/TPR change '...
    %        'modulates by alpha-sympathetic/a_blocker'];
    %set_param(gain_file_name,'Gain',num2str(1-get(handles.checkbox1,'Value')));

    %set Gbs slider
    set(handles.slider2,'Min',-1);%-0.1
    set(handles.slider2,'Value',evalin('base','Gbs'));
    set(handles.slider2,'Max',0);%1
    gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/SA Node/Gain_HPbs'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider2,'Value')));

    %set b_blocker checkbox
%     set(handles.checkbox2,'Value',evalin('base','b_blocker'));
%     gain_file_name = ['PNEUMA/Cardiovascular System'...
%             '/SA-node/HP change modulated by beta-symp/b_blocker'];
%     set_param(gain_file_name,'Gain',num2str(1-get(handles.checkbox2,'Value')));
    
    %set Gpara slider
    set(handles.slider3,'Min',0);
    set(handles.slider3,'Value',evalin('base','Gpara'));
    set(handles.slider3,'Max',1);%0.1
    gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/SA Node/Gain_HPpara'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider3,'Value')));
    
    %set Heart Contractility
    %--Gain_Emaxlv
    set(handles.slider26,'Min',0);
    set(handles.slider26,'Value',evalin('base','G_Emaxlv'));
    set(handles.slider26,'Max',0.475);
    gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/Heart Emaxlv/Gain_Emaxlv'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider26,'Value')));
    
    %--Basal_Emaxlv
    set(handles.slider28,'Min',0.1);
    set(handles.slider28,'Value',evalin('base','Base_Emaxlv'));
    set(handles.slider28,'Max',2.392);%1
    gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/Heart Emaxlv/Basal_Emaxlv'];
    set_param(gain_file_name,'Value',num2str(get(handles.slider28,'Value')));

%     %set p_blocker checkbox
%     set(handles.checkbox3,'Value',evalin('base','p_blocker'));
%     gain_file_name = ['PNEUMA/Cardiovascular System'...
%             '/SA-node/HP change modulated by parasymp/p_blocker'];
%     set_param(gain_file_name,'Gain',num2str(1-get(handles.checkbox3,'Value')));

    %set G_CRSA slider
    set(handles.slider4,'Min',0);
    set(handles.slider4,'Value',evalin('base','G_CRSA'));
    set(handles.slider4,'Max',10);
    gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_CRSA'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider4,'Value')));
    
%     %set CRSA_blocker checkbox
%     set(handles.checkbox4,'Value',evalin('base','CRSA_blocker'));
%     gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/CRSA_blocker'];
%     set_param(gain_file_name,'Gain',num2str(1-get(handles.checkbox4,'Value')));
    
    %set G_chemo_para slider
    set(handles.slider5,'Min',0);
    set(handles.slider5,'Value',evalin('base','G_chemo_para'));
    set(handles.slider5,'Max',0.05);
    gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_para'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider5,'Value')));

    %set G_chemo_bsymp slider
    set(handles.slider17,'Min',0);
    set(handles.slider17,'Value',evalin('base','G_chemo_bsymp'));
    set(handles.slider17,'Max',5);%0.05
    gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_bsymp'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider17,'Value')));
    
    %set G_chemo_asymp slider
    set(handles.slider18,'Min',0);
    set(handles.slider18,'Value',evalin('base','G_chemo_asymp'));
    set(handles.slider18,'Max',10);
    gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_asymp'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider18,'Value')));
    
    
%     %set chemo_blocker checkbox
%     set(handles.checkbox5,'Value',evalin('base','chemo_blocker'));
%     gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/chemo_blocker'];
%     set_param(gain_file_name,'Gain',num2str(1-get(handles.checkbox5,'Value')));
 
    
    %set G_lung_para Gain slider
    set(handles.slider6,'Min',0);
    set(handles.slider6,'Value',evalin('base','G_lung_para'));
    set(handles.slider6,'Max',0.5);
    gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_para'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider6,'Value')));
    
    %set G_lung_bsymp Gain slider
    set(handles.slider19,'Min',0);
    set(handles.slider19,'Value',evalin('base','G_lung_bsymp'));
    set(handles.slider19,'Max',0.5);
    gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_bsymp'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider19,'Value')));
    
    %set G_lung_asymp Gain slider
    set(handles.slider20,'Min',0);
    set(handles.slider20,'Value',evalin('base','G_lung_asymp'));
    set(handles.slider20,'Max',0.5);
    gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_asymp'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider20,'Value')));
    
%     %set Lung_blocker checkbox
%     set(handles.checkbox6,'Value',evalin('base','Lung_blocker'));
%     gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/Lung_blocker'];
%     set_param(gain_file_name,'Gain',num2str(1-get(handles.checkbox6,'Value')));

    %set G_RespMus Gain slider
    set(handles.slider7,'Min',0);
    set(handles.slider7,'Value',evalin('base','G_RespMus'));
    set(handles.slider7,'Max',50);
    gain_file_name = ['PNEUMA/Central Neural Control/G_RespMus'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider7,'Value')));
    
%     %set RespMus_blocker checkbox
%     set(handles.checkbox7,'Value',evalin('base','RespMus_blocker'));
%     gain_file_name = ['PNEUMA/Central Neural Control/RespMus_blocker'];
%     set_param(gain_file_name,'Gain',num2str(1-get(handles.checkbox7,'Value')));
    
    %set T_p_delay_const slider
    set(handles.slider10,'Min',0);
    set(handles.slider10,'Value',evalin('base','T_p_delay_const'));
    set(handles.slider10,'Max',5);%30
    gain_file_name = ['PNEUMA/Respiratory System/Gas '...
            'Exchange/Lung-Chemo Volume'];
    set_param(gain_file_name,'Value',num2str(get(handles.slider10,'Value')));

    %%set pleural pressure slider
    set(handles.slider22,'Min',0);
    set(handles.slider22,'Value',evalin('base','G_pleural'));
    set(handles.slider22,'Max',1);
    gain_file_name = ['PNEUMA/Cardiovascular System/'...
            'G_pleural'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider22,'Value')));

    %%set pleural pressure checkbox
    %set(handles.checkbox16,'Value',evalin('base','G_pleural'));
    %gain_file_name = ['PNEUMA/Cardiovascular System/'...
    %        'G_pleural'];
    %set_param(gain_file_name,'Gain',num2str(get(handles.checkbox16,'Value')));
    
    %set Gc slider
    set(handles.slider14,'Min',0);
    set(handles.slider14,'Value',evalin('base','Gc'));
    set(handles.slider14,'Max',0.075*30);%1
    gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gc'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider14,'Value')));

%     %set Gc_blocker checkbox
%     set(handles.checkbox14,'Value',evalin('base','Gc_blocker'));
%     gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gc_blocker'];
%     set_param(gain_file_name,'Gain',num2str(1-get(handles.checkbox14,'Value')));

    %set Gp slider
    set(handles.slider15,'Min',0);
    set(handles.slider15,'Value',evalin('base','Gp'));
    set(handles.slider15,'Max',0.0063*30);%1
    gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gp'];
    set_param(gain_file_name,'Gain',num2str(get(handles.slider15,'Value')));
    
%     %set Gp_blocker checkbox
%     set(handles.checkbox15,'Value',evalin('base','Gp_blocker'));
%     gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gp_blocker'];
%     set_param(gain_file_name,'Gain',num2str(1-get(handles.checkbox15,'Value')));
    
    %%set ABP_change slider
    %set(handles.slider16,'Min',-100);
    %set(handles.slider16,'Value',evalin('base','ABP_change'));
    %set(handles.slider16,'Max',100);
    %gain_file_name = ['PNEUMA/Cardiovascular System/ABP_change'];
    %set_param(gain_file_name,'Value',num2str(get(handles.slider16,'Value')));

    %set Alpha-Symp Gain 
    % --Gas_Rsp-
    set(handles.edit93,'Value',get(handles.slider1,'Min'));
    set(handles.edit93,'String',num2str(get(handles.slider1,'Min')));
    
    set(handles.edit4,'Value',get(handles.slider1,'Value'));
    set(handles.edit4,'String',num2str(get(handles.slider1,'Value')));
    
    set(handles.edit5,'Value',get(handles.slider1,'Max'));
    set(handles.edit5,'String',num2str(get(handles.slider1,'Max')));
    
    % --Gas_Rep--
    set(handles.edit77,'Value',get(handles.slider24,'Min'));
    set(handles.edit77,'String',num2str(get(handles.slider24,'Min')));
    
    set(handles.edit78,'Value',get(handles.slider24,'Value'));
    set(handles.edit78,'String',num2str(get(handles.slider24,'Value')));
    
    set(handles.edit79,'Value',get(handles.slider24,'Max'));
    set(handles.edit79,'String',num2str(get(handles.slider24,'Max')));
    
    % --Gas_Rmp--
    set(handles.edit80,'Value',get(handles.slider25,'Min'));
    set(handles.edit80,'String',num2str(get(handles.slider25,'Min')));
    
    set(handles.edit81,'Value',get(handles.slider25,'Value'));
    set(handles.edit81,'String',num2str(get(handles.slider25,'Value')));
    
    set(handles.edit82,'Value',get(handles.slider25,'Max'));
    set(handles.edit82,'String',num2str(get(handles.slider25,'Max')));
   
    
    %set Beta-Symp Gain
    set(handles.edit6,'Value',get(handles.slider2,'Min'));
    set(handles.edit6,'String',num2str(get(handles.slider2,'Min')));
    
    set(handles.edit7,'Value',get(handles.slider2,'Value'));
    set(handles.edit7,'String',num2str(get(handles.slider2,'Value')));
    
    set(handles.edit8,'Value',get(handles.slider2,'Max'));
    set(handles.edit8,'String',num2str(get(handles.slider2,'Max')));
    
    %set Parasymp Gain
    set(handles.edit9,'Value',get(handles.slider3,'Min'));
    set(handles.edit9,'String',num2str(get(handles.slider3,'Min')));
    
    set(handles.edit10,'Value',get(handles.slider3,'Value'));
    set(handles.edit10,'String',num2str(get(handles.slider3,'Value')));
    
    set(handles.edit11,'Value',get(handles.slider3,'Max'));
    set(handles.edit11,'String',num2str(get(handles.slider3,'Max')));
    
    %set Heart Contractility
    %--Gain_Emaxlv
    set(handles.edit83,'Value',get(handles.slider26,'Min'));
    set(handles.edit83,'String',num2str(get(handles.slider26,'Min')));
    
    set(handles.edit84,'Value',get(handles.slider26,'Value'));
    set(handles.edit84,'String',num2str(get(handles.slider26,'Value')));
    
    set(handles.edit85,'Value',get(handles.slider26,'Max'));
    set(handles.edit85,'String',num2str(get(handles.slider26,'Max')));
    
    %--Basal_Emaxlv
    set(handles.edit89,'Value',get(handles.slider28,'Min'));
    set(handles.edit89,'String',num2str(get(handles.slider28,'Min')));
    
    set(handles.edit90,'Value',get(handles.slider28,'Value'));
    set(handles.edit90,'String',num2str(get(handles.slider28,'Value')));
    
    set(handles.edit91,'Value',get(handles.slider28,'Max'));
    set(handles.edit91,'String',num2str(get(handles.slider28,'Max')));
    
    %set Central RSA Gain
    set(handles.edit12,'Value',get(handles.slider4,'Min'));
    set(handles.edit12,'String',num2str(get(handles.slider4,'Min')));
    
    set(handles.edit13,'Value',get(handles.slider4,'Value'));
    set(handles.edit13,'String',num2str(get(handles.slider4,'Value')));
    
    set(handles.edit14,'Value',get(handles.slider4,'Max'));
    set(handles.edit14,'String',num2str(get(handles.slider4,'Max')));
    
    %set Chemoreflex Gain (Parasympathetic)
    set(handles.edit15,'Value',get(handles.slider5,'Min'));
    set(handles.edit15,'String',num2str(get(handles.slider5,'Min')));
    
    set(handles.edit16,'Value',get(handles.slider5,'Value'));
    set(handles.edit16,'String',num2str(get(handles.slider5,'Value')));
    
    set(handles.edit17,'Value',get(handles.slider5,'Max'));
    set(handles.edit17,'String',num2str(get(handles.slider5,'Max')));
  
    %set Chemoreflex Gain (Beta-Sympathetic)
    set(handles.edit59,'Value',get(handles.slider17,'Min'));
    set(handles.edit59,'String',num2str(get(handles.slider17,'Min')));
    
    set(handles.edit60,'Value',get(handles.slider17,'Value'));
    set(handles.edit60,'String',num2str(get(handles.slider17,'Value')));
    
    set(handles.edit61,'Value',get(handles.slider17,'Max'));
    set(handles.edit61,'String',num2str(get(handles.slider17,'Max')));
    
    %set Chemoreflex Gain (Alpha-Sympathetic)
    set(handles.edit62,'Value',get(handles.slider18,'Min'));
    set(handles.edit62,'String',num2str(get(handles.slider18,'Min')));
    
    set(handles.edit63,'Value',get(handles.slider18,'Value'));
    set(handles.edit63,'String',num2str(get(handles.slider18,'Value')));
    
    set(handles.edit64,'Value',get(handles.slider18,'Max'));
    set(handles.edit64,'String',num2str(get(handles.slider18,'Max')));
    
    %set Lung Reflex Gain (Parasympathetic)
    set(handles.edit18,'Value',get(handles.slider6,'Min'));
    set(handles.edit18,'String',num2str(get(handles.slider6,'Min')));
    
    set(handles.edit19,'Value',get(handles.slider6,'Value'));
    set(handles.edit19,'String',num2str(get(handles.slider6,'Value')));
    
    set(handles.edit20,'Value',get(handles.slider6,'Max'));
    set(handles.edit20,'String',num2str(get(handles.slider6,'Max')));

    %set Lung Reflex Gain (Beta-Sympathetic)
    set(handles.edit65,'Value',get(handles.slider19,'Min'));
    set(handles.edit65,'String',num2str(get(handles.slider19,'Min')));
    
    set(handles.edit66,'Value',get(handles.slider19,'Value'));
    set(handles.edit66,'String',num2str(get(handles.slider19,'Value')));
    
    set(handles.edit67,'Value',get(handles.slider19,'Max'));
    set(handles.edit67,'String',num2str(get(handles.slider19,'Max')));
    
    %set Lung Reflex Gain (Alpha-Sympathetic)
    set(handles.edit68,'Value',get(handles.slider20,'Min'));
    set(handles.edit68,'String',num2str(get(handles.slider20,'Min')));
    
    set(handles.edit69,'Value',get(handles.slider20,'Value'));
    set(handles.edit69,'String',num2str(get(handles.slider20,'Value')));
    
    set(handles.edit70,'Value',get(handles.slider20,'Max'));
    set(handles.edit70,'String',num2str(get(handles.slider20,'Max')));
    
    
    %set Resp Muscle Gain
    set(handles.edit21,'Value',get(handles.slider7,'Min'));
    set(handles.edit21,'String',num2str(get(handles.slider7,'Min')));
    
    set(handles.edit22,'Value',get(handles.slider7,'Value'));
    set(handles.edit22,'String',num2str(get(handles.slider7,'Value')));
    
    set(handles.edit23,'Value',get(handles.slider7,'Max'));
    set(handles.edit23,'String',num2str(get(handles.slider7,'Max')));
    
    %set Lung-Chemo Volume
    set(handles.edit34,'Value',get(handles.slider10,'Min'));
    set(handles.edit34,'String',num2str(get(handles.slider10,'Min')));
    
    set(handles.edit35,'Value',get(handles.slider10,'Value'));
    set(handles.edit35,'String',num2str(get(handles.slider10,'Value')));
    
    set(handles.edit36,'Value',get(handles.slider10,'Max'));
    set(handles.edit36,'String',num2str(get(handles.slider10,'Max')));
    
    %set Lung-Chemo Volume
    set(handles.edit37,'Value',get(handles.slider22,'Min'));
    set(handles.edit37,'String',num2str(get(handles.slider22,'Min')));
    
    set(handles.edit38,'Value',get(handles.slider22,'Value'));
    set(handles.edit38,'String',num2str(get(handles.slider22,'Value')));
    
    set(handles.edit39,'Value',get(handles.slider22,'Max'));
    set(handles.edit39,'String',num2str(get(handles.slider22,'Max')));
    
    %set Central Chemo Gain
    set(handles.edit50,'Value',get(handles.slider14,'Min'));
    set(handles.edit50,'String',num2str(get(handles.slider14,'Min')));
    
    set(handles.edit51,'Value',get(handles.slider14,'Value'));
    set(handles.edit51,'String',num2str(get(handles.slider14,'Value')));
    
    set(handles.edit52,'Value',get(handles.slider14,'Max'));
    set(handles.edit52,'String',num2str(get(handles.slider14,'Max')));
    
    %set Peripheral Chemo Gain
    set(handles.edit53,'Value',get(handles.slider15,'Min'));
    set(handles.edit53,'String',num2str(get(handles.slider15,'Min')));
    
    set(handles.edit54,'Value',get(handles.slider15,'Value'));
    set(handles.edit54,'String',num2str(get(handles.slider15,'Value')));
    
    set(handles.edit55,'Value',get(handles.slider15,'Max'));
    set(handles.edit55,'String',num2str(get(handles.slider15,'Max')));
    
    %set ABP change
    %set(handles.edit56,'Value',get(handles.slider16,'Min'));
    %set(handles.edit56,'String',num2str(get(handles.slider16,'Min')));
    
    %set(handles.edit57,'Value',get(handles.slider16,'Value'));
    %set(handles.edit57,'String',num2str(get(handles.slider16,'Value')));
    
    %set(handles.edit58,'Value',get(handles.slider16,'Max'));
    %set(handles.edit58,'String',num2str(get(handles.slider16,'Max')));
    
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

   
% --a_symp Gain-----------------------------------------------------------------
function varargout = pushbutton6_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Cardiovascular System/TPR Change', 'force');

%function varargout = checkbox1_CreateFcn(h, eventdata, handles, varargin)
%set(h,'Value',evalin('base','a_blocker'));
%gain_file_name = ['PNEUMA/Cardiovascular System/TPR change/TPR change '...
%            'modulates by alpha-sympathetic/a_blocker'];
%set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));

%function varargout = checkbox1_Callback(h, eventdata, handles, varargin)

%gain_file_name = ['PNEUMA/Cardiovascular System/TPR change/TPR change '...
%            'modulates by alpha-sympathetic/a_blocker'];
%set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));
% --Gas_Rsp---------------------------
function edit93_Callback(hObject, eventdata, handles)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider1,'Min',str2num(get(h,'String')));

function edit93_CreateFcn(h, eventdata, handles)
set(h,'Value',0);
set(h,'String',num2str(get(h,'Value')));

function varargout = edit4_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider1,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'TPR Change/Peri Circ Rsp/Gain_Rsp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit5_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider1,'Max',str2num(get(h,'String')));

function varargout = slider1_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','Gas_Rsp'));
set(h,'Max',1);
gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'TPR Change/Peri Circ Rsp/Gain_Rsp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider1_Callback(h, eventdata, handles, varargin)
set(handles.edit4,'Value',get(h,'Value'));
set(handles.edit4,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'TPR Change/Peri Circ Rsp/Gain_Rsp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

% --Gas_Rep-------------------------
function edit77_Callback(h, eventdata, handles)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider24,'Min',str2num(get(h,'String')));

function varargout = edit77_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',0);
set(h,'String',num2str(get(h,'Value')));


function edit78_Callback(h, eventdata, handles)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider24,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'TPR Change/Peri Circ Rep/Gain_Rep'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit78_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Gas_Rep'));
set(h,'String',num2str(get(h,'Value')));

function edit79_Callback(h, eventdata, handles)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider24,'Max',str2num(get(h,'String')));

function varargout = edit79_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',3);
set(h,'String',num2str(get(h,'Value')));

% --- Executes on slider movement.
function slider24_Callback(h, eventdata, handles)
set(handles.edit78,'Value',get(h,'Value'));
set(handles.edit78,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'TPR Change/Peri Circ Rep/Gain_Rep'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function slider24_CreateFcn(h, eventdata, handles)
set(h,'Min',0);
set(h,'Value',evalin('base','Gas_Rep'));
set(h,'Max',3);
gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'TPR Change/Peri Circ Rep/Gain_Rep'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

% --Gas_Rmp-------------------------

function edit80_Callback(h, eventdata, handles)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider25,'Min',str2num(get(h,'String')));

function varargout = edit80_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',0);
set(h,'String',num2str(get(h,'Value')));


function edit81_Callback(h, eventdata, handles)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider25,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'TPR Change/Peri Circ Rmp/Gain_Rmp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit81_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Gas_Rmp'));
set(h,'String',num2str(get(h,'Value')));

function edit82_Callback(h, eventdata, handles)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider25,'Max',str2num(get(h,'String')));

function varargout = edit82_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',5);
set(h,'String',num2str(get(h,'Value')));


% --- Executes on slider movement.
function slider25_Callback(h, eventdata, handles)
set(handles.edit81,'Value',get(h,'Value'));
set(handles.edit81,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'TPR Change/Peri Circ Rmp/Gain_Rmp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function slider25_CreateFcn(h, eventdata, handles)
set(h,'Min',0);
set(h,'Value',evalin('base','Gas_Rmp'));
set(h,'Max',5);
gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'TPR Change/Peri Circ Rmp/Gain_Rmp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

% --b_symp Gain-----------------------------------------------------------------
function varargout = pushbutton7_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/SA Node'], 'force');

% function varargout = checkbox2_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','b_blocker'));
% gain_file_name = ['PNEUMA/Cardiovascular System'...
%         '/SA-node/HP change modulated by beta-symp/b_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));
% 
% function varargout = checkbox2_Callback(h, eventdata, handles, varargin)
% gain_file_name = ['PNEUMA/Cardiovascular System'...
%         '/SA-node/HP change modulated by beta-symp/b_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));

function varargout = edit6_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider2,'Min',str2num(get(h,'String')));

function varargout = edit7_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
% set(handles.slider2,'Min',str2num(get(h,'String')));
set(handles.slider2,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/SA Node/Gain_HPbs'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit8_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
% set(handles.slider2,'Min',str2num(get(h,'String')));
set(handles.slider2,'Max',str2num(get(h,'String')));

function varargout = slider2_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',-1);%-0.1
set(h,'Value',evalin('base','Gbs'));
set(h,'Max',0);%1
gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/SA Node/Gain_HPbs'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider2_Callback(h, eventdata, handles, varargin)
set(handles.edit7,'Value',get(h,'Value'));
set(handles.edit7,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/SA Node/Gain_HPbs'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));



% --parasymp Gain--
function varargout = pushbutton8_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/SA Node'], 'force');

% function varargout = checkbox3_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','p_blocker'));
% gain_file_name = ['PNEUMA/Cardiovascular System'...
%         '/SA-node/HP change modulated by parasymp/p_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));

% function varargout = checkbox3_Callback(h, eventdata, handles, varargin)
% gain_file_name = ['PNEUMA/Cardiovascular System'...
%         '/SA-node/HP change modulated by parasymp/p_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));
function varargout = edit9_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider3,'Min',str2num(get(h,'String')));

function varargout = edit10_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider3,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/SA Node/Gain_HPpara'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit11_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider3,'Max',str2num(get(h,'String')));

function varargout = slider3_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','Gpara'));
set(h,'Max',1);
gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/SA Node/Gain_HPpara'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider3_Callback(h, eventdata, handles, varargin)
set(handles.edit10,'Value',get(h,'Value'));
set(handles.edit10,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/SA Node/Gain_HPpara'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

% --central RSA Gain--------------------------------------------------------------------
function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Central Neural Control/Autonomic Control', 'force');

% function varargout = checkbox4_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','CRSA_blocker'));
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/CRSA_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));
% 
% function varargout = checkbox4_Callback(h, eventdata, handles, varargin)
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/CRSA_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));

function varargout = edit12_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider4,'Min',str2num(get(h,'String')));

function varargout = edit13_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider4,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_CRSA'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit14_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider4,'Max',str2num(get(h,'String')));

function varargout = slider4_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','G_CRSA'));
set(h,'Max',10);
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_CRSA'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider4_Callback(h, eventdata, handles, varargin)
set(handles.edit13,'Value',get(h,'Value'));
set(handles.edit13,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_CRSA'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));


% --Chemreflex----------------------------------------------------------------------
function varargout = pushbutton3_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Central Neural Control/Autonomic Control', 'force');

% function varargout = checkbox5_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','chemo_blocker'));
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/chemo_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));

% function varargout = checkbox5_Callback(h, eventdata, handles, varargin)
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/chemo_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));
% 
% --Chemoreflex Gain Parasympathetic--
function varargout = edit15_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider5,'Min',str2num(get(h,'String')));

function varargout = edit16_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider5,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_para'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit17_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider5,'Max',str2num(get(h,'String')));

function varargout = slider5_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','G_chemo_para'));
set(h,'Max',0.05);
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_para'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider5_Callback(h, eventdata, handles, varargin)
set(handles.edit16,'Value',get(h,'Value'));
set(handles.edit16,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_para'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));


% --Chemoreflex Gain Beta_Sympathetic--
function varargout = edit59_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider17,'Min',str2num(get(h,'String')));

function varargout = edit60_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider17,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_bsymp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit61_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider17,'Max',str2num(get(h,'String')));

function varargout = slider17_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','G_chemo_bsymp'));
set(h,'Max',5);%5
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_bsymp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider17_Callback(h, eventdata, handles, varargin)
set(handles.edit60,'Value',get(h,'Value'));
set(handles.edit60,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_bsymp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));


% --Chemoreflex Gain Alpha_Sympathetic--
function varargout = edit62_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider18,'Min',str2num(get(h,'String')));

function varargout = edit63_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider18,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_asymp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit64_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider18,'Max',str2num(get(h,'String')));

function varargout = slider18_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','G_chemo_asymp'));
set(h,'Max',10);
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_asymp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider18_Callback(h, eventdata, handles, varargin)
set(handles.edit63,'Value',get(h,'Value'));
set(handles.edit63,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_chemo_asymp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));


% --Lung Stretch Receptors Reflex-------------------------------------------------------------
function varargout = pushbutton4_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Central Neural Control/Autonomic Control', 'force');

% function varargout = checkbox6_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','Lung_blocker'));
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/Lung_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));
% 
% function varargout = checkbox6_Callback(h, eventdata, handles, varargin)
% gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/Lung_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));

% --Lung Reflex Gain Parasympathetic--
function varargout = edit18_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider6,'Min',str2num(get(h,'String')));

function varargout = edit19_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider6,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_para'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit20_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider6,'Max',str2num(get(h,'String')));

function varargout = slider6_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','G_lung_para'));
set(h,'Max',0.5);
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_para'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider6_Callback(h, eventdata, handles, varargin)
set(handles.edit19,'Value',get(h,'Value'));
set(handles.edit19,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_para'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));


% --Lung Reflex Gain Beta-Sympathetic--
function varargout = edit65_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider19,'Min',str2num(get(h,'String')));

function varargout = edit66_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider19,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_bsymp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit67_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider19,'Max',str2num(get(h,'String')));

function varargout = slider19_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','G_lung_bsymp'));
set(h,'Max',0.5);
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_bsymp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider19_Callback(h, eventdata, handles, varargin)
set(handles.edit66,'Value',get(h,'Value'));
set(handles.edit66,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_bsymp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));


% --Lung Reflex Gain Alpha-Sympathetic--
function varargout = edit68_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider19,'Min',str2num(get(h,'String')));

function varargout = edit69_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider20,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_asymp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit70_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider20,'Max',str2num(get(h,'String')));

function varargout = slider20_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','G_lung_bsymp'));
set(h,'Max',0.5);
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_asymp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider20_Callback(h, eventdata, handles, varargin)
set(handles.edit69,'Value',get(h,'Value'));
set(handles.edit69,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Central Neural Control/Autonomic Control/G_lung_asymp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));




% --Resp Muscle Gain--
function varargout = pushbutton5_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Central Neural Control'], 'force');

% function varargout = checkbox7_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','RespMus_blocker'));
% gain_file_name = ['PNEUMA/Central Neural Control/RespMus_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));
% 
% function varargout = checkbox7_Callback(h, eventdata, handles, varargin)
% gain_file_name = ['PNEUMA/Central Neural Control/RespMus_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));

function varargout = edit21_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider7,'Min',str2num(get(h,'String')));

function varargout = edit22_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider7,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Central Neural Control/G_RespMus'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit23_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider7,'Max',str2num(get(h,'String')));

function varargout = slider7_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','G_RespMus'));
set(h,'Max',50);
gain_file_name = ['PNEUMA/Central Neural Control/G_RespMus'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider7_Callback(h, eventdata, handles, varargin)
set(handles.edit22,'Value',get(h,'Value'));
set(handles.edit22,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Central Neural Control/G_RespMus'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));


% --Lung-Chemo Volume--
function varargout = pushbutton13_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Respiratory System/Gas Exchange', 'force');

function varargout = edit34_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider10,'Min',str2num(get(h,'String')));

function varargout = edit35_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider10,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Respiratory System/Gas '...
        'Exchange/Lung-Chemo Volume'];
set_param(gain_file_name,'Value',get(h,'String'));

function varargout = edit36_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider10,'Max',str2num(get(h,'String')));

function varargout = slider10_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','T_p_delay_const'));
set(h,'Max',5);
gain_file_name = ['PNEUMA/Respiratory System/Gas '...
        'Exchange/Lung-Chemo Volume'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));

function varargout = slider10_Callback(h, eventdata, handles, varargin)
set(handles.edit35,'Value',get(h,'Value'));
set(handles.edit35,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Respiratory System/Gas '...
        'Exchange/Lung-Chemo Volume'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));



% --Pleural Pressure-----------------------------------------------------------------------
function varargout = pushbutton9_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Cardiovascular System', 'force')

function varargout = edit37_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider22,'Min',str2num(get(h,'String')));


function varargout = edit38_Callback(h, eventdata, handles, varargin)
gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'G_pleural'];
set_param(gain_file_name,'Gain',get(h,'String'));
set(h,'Value',str2num(get(h,'String')));
set(handles.slider22,'Value',str2num(get(h,'String')));


function varargout = edit39_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider22,'Max',str2num(get(h,'String')));

function varargout = slider22_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','G_pleural'));
set(h,'Max',1);
gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'G_pleural'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider22_Callback(h, eventdata, handles, varargin)
set(handles.edit38,'Value',get(h,'Value'));
set(handles.edit38,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Cardiovascular System/'...
        'G_pleural'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));




% --Central Chemo Gain--
function varargout = pushbutton11_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)'], 'force');

% function varargout = checkbox14_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','Gc_blocker'));
% gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gc_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));
% 
% function varargout = checkbox14_Callback(h, eventdata, handles, varargin)
% gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gc_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));

function varargout = edit50_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider14,'Min',str2num(get(h,'String')));

function varargout = edit51_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider14,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gc'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit52_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider14,'Max',str2num(get(h,'String')));

function varargout = slider14_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','Gc'));
set(h,'Max',1);
gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gc'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider14_Callback(h, eventdata, handles, varargin)
set(handles.edit51,'Value',get(h,'Value'));
set(handles.edit51,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gc'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));




% --Peripheral Chemo Gain--
function varargout = pushbutton12_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)'], 'force');

% function varargout = checkbox15_CreateFcn(h, eventdata, handles, varargin)
% set(h,'Value',evalin('base','Gp_blocker'));
% gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gp_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));
% 
% function varargout = checkbox15_Callback(h, eventdata, handles, varargin)
% gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gp_blocker'];
% set_param(gain_file_name,'Gain',num2str(1-get(h,'Value')));

function varargout = edit53_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider14,'Min',str2num(get(h,'String')));

function varargout = edit54_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider15,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = edit55_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider15,'Max',str2num(get(h,'String')));

function varargout = slider15_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);
set(h,'Value',evalin('base','Gp'));
set(h,'Max',1);
gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function varargout = slider15_Callback(h, eventdata, handles, varargin)
set(handles.edit54,'Value',get(h,'Value'));
set(handles.edit54,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Central Neural Control/VENTILATORY DRIVE (chemical)/Gp'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));




% --ABP change--
function varargout = pushbutton10_Callback(h, eventdata, handles, varargin)
open_system('PNEUMA/Cardiovascular System', 'force')





% --------------------------------------------------------------------
function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
delete(handles.figure1);
assignin('base','adjs_fig_num',0);

% --------------------------------------------------------------------
function varargout = figure1_CloseRequestFcn(h, eventdata, handles, varargin)
delete(handles.figure1);
assignin('base','adjs_fig_num',0);
% 

% --heart Contractility----------------------------------------------------
function pushbutton17_Callback(h, eventdata, handles, varargin)
open_system(['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/Heart Emaxlv'], 'force');
function pushbutton9_CreateFcn(h,eventdata, handles, varargin)

    
function edit83_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider26,'Min',str2num(get(h,'String')));

function varargout = edit83_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',0);
set(h,'String',num2str(get(h,'Value')));

function edit84_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
% set(handles.slider2,'Min',str2num(get(h,'String')));
set(handles.slider26,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/Heart Emaxlv/Gain_Emaxlv'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));

function edit84_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','G_Emaxlv'));
set(h,'String',num2str(get(h,'Value')));

function edit85_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider26,'Max',str2num(get(h,'String')));

function edit85_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',0.475);
set(h,'String',num2str(get(h,'Value')));

% --- Executes on slider movement.
function slider26_Callback(h, eventdata, handles, varargin)
set(handles.edit84,'Value',get(h,'Value'));
set(handles.edit84,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/Heart Emaxlv/Gain_Emaxlv'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));
% --- Executes during object creation, after setting all properties.
function slider26_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0);%-0.1
set(h,'Value',evalin('base','G_Emaxlv'));
set(h,'Max',0.475);%1
gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/Heart Emaxlv/Gain_Emaxlv'];
set_param(gain_file_name,'Gain',num2str(get(h,'Value')));



function edit89_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider28,'Min',str2num(get(h,'String')));

function varargout = edit89_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',0.1);
set(h,'String',num2str(get(h,'Value')));

function edit90_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
% set(handles.slider2,'Min',str2num(get(h,'String')));
set(handles.slider28,'Value',str2num(get(h,'String')));
gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/Heart Emaxlv/Basal_Emaxlv'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));

function varargout = edit90_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',evalin('base','Base_Emaxlv'));
set(h,'String',num2str(get(h,'Value')));

function edit91_Callback(h, eventdata, handles, varargin)
set(h,'Value',str2num(get(h,'String')));
set(handles.slider28,'Max',str2num(get(h,'String')));

function varargout = edit91_CreateFcn(h, eventdata, handles, varargin)
set(h,'Value',2.392);
set(h,'String',num2str(get(h,'Value')));
% --- Executes on slider movement.
function slider28_Callback(h, eventdata, handles, varargin)
set(handles.edit90,'Value',get(h,'Value'));
set(handles.edit90,'String',num2str(get(h,'Value')));
gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/Heart Emaxlv/Basal_Emaxlv'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));


% --- Executes during object creation, after setting all properties.
function slider28_CreateFcn(h, eventdata, handles, varargin)
set(h,'Min',0.1);%-0.1
set(h,'Value',evalin('base','Base_Emaxlv'));
set(h,'Max',2.392);%1
gain_file_name = ['PNEUMA/Cardiovascular System'...
        '/SA-node and Autonomic Control/Heart Emaxlv/Basal_Emaxlv'];
set_param(gain_file_name,'Value',num2str(get(h,'Value')));

    
