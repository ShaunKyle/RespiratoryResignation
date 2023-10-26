function varargout = directory_list_load(varargin)

if nargin <= 1   % LAUNCH GUI
	if nargin == 0 
		initial_dir = pwd;
	elseif nargin == 1 & exist(varargin{1},'dir')  
		initial_dir = varargin{1};
	else
		errordlg('Input argument must be a valid directory','Input Argument Error!')
		return
	end
	% Open FIG-file
	fig = openfig(mfilename,'reuse');	% Generate a structure of handles to pass to callbacks, and store it. 
    handles = guihandles(fig);
	guidata(fig, handles);
	% Populate the listbox
	load_listbox(initial_dir,handles)
	% Return figure handle as first output argument
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

% ------------------------------------------------------------
% Callback for list box - open .fig with guide, otherwise use open
% ------------------------------------------------------------
function varargout = listbox1_Callback(h, eventdata, handles, varargin)
%if strcmp(get(handles.figure1,'SelectionType'),'open')
index_selected = get(handles.listbox1,'Value');
file_list = get(handles.listbox1,'String');	
filename = file_list{index_selected};
set(handles.edit1,'String',filename);
%try
%    evalin('base',['load ',filename]);
%catch
%    errordlg(lasterr,'File error','modal');
%end

%	if  handles.is_dir(handles.sorted_index(index_selected))
%		cd (filename)
%		load_listbox(pwd,handles)
%	else
%	   [path,name,ext,ver] = fileparts(filename);
%	   set(handles.edit1,'String',filename);
%       switch ext
%	   case '.fig'
%		   guide (filename)
%	   otherwise 
%		try
%	    	open(filename)
%		catch
%			errordlg(lasterr,'File Type Error','modal')
%		end
%	   end	
%   end
%end
% ------------------------------------------------------------
% Read the current directory and sort the names
% ------------------------------------------------------------

function load_listbox(dir_path,handles)
cd (pwd)
dir_struct = dir(pwd);
file_number = length(dir_struct);
counter = 1;
for (i = 1:file_number)
    if (~isempty(findstr(dir_struct(i).name,'.mat'))&(findstr(dir_struct(i).name,'.mat') >1))
        mat_file(counter).file_names = dir_struct(i).name;
        index_counter(counter) = counter; 
        counter = counter+1;
    end
    if (~isempty(findstr(dir_struct(i).name,'.MAT'))&(findstr(dir_struct(i).name,'.MAT') >1))
        mat_file(counter).file_names = dir_struct(i).name;
        index_counter(counter) = counter; 
        counter = counter+1;
    end
end


%[sorted_names,sorted_index] = sortrows({dir_struct.name}');
%handles.file_names = sorted_names;
%handles.is_dir = [dir_struct.isdir];
%handles.sorted_index = [sorted_index];

if (counter ==1)
    handles.file_names = ' ';
    handles.sorted_index = 1;
else
    handles.file_names = {mat_file.file_names}';
    handles.sorted_index = (1:counter-1)';
end

guidata(handles.figure1,handles)
set(handles.listbox1,'String',handles.file_names,...
	'Value',1)
set(handles.text1,'String',pwd)


% --LOAD data---------------------------------------------------------
function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
%evalin('base','clear');
evalin('base',['load ',get(handles.edit1,'String')]);
if(evalin('base','adjs_fig_num')~=0)
    adjs_fig_num = adjustable_inputs;
    assignin('base','adjs_fig_num',adjs_fig_num);
end
if(evalin('base','man_fig_num')~=0)
    man_fig_num = interventions;
    assignin('base','man_fig_num',man_fig_num);
end
if(evalin('base','ic_fig_num')~=0)
    ic_fig_num = initial_conditions;
    assignin('base','ic_fig_num',ic_fig_num);
end
if(evalin('base','const_fig_num')~=0)
    const_fig_num = constant_parameters;
    assignin('base','const_fig_num',const_fig_num);
end



% --SAVE data---------------------------------------------------------
function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)
assignin('base','first_time',0);
evalin('base','acquire_data');
%get(handles.edit1,'String');
evalin('base',['save ',get(handles.edit1,'String')]);


% --close-------------------------------------------------------------
function varargout = pushbutton3_Callback(h, eventdata, handles, varargin)
close(handles.figure1);