function varargout = HeartAttackDisease(varargin)
% HEARTATTACKDISEASE MATLAB code for HeartAttackDisease.fig
%      HEARTATTACKDISEASE, by itself, creates a new HEARTATTACKDISEASE or raises the existing
%      singleton*.
%
%      H = HEARTATTACKDISEASE returns the handle to a new HEARTATTACKDISEASE or the handle to
%      the existing singleton*.
%
%      HEARTATTACKDISEASE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HEARTATTACKDISEASE.M with the given input arguments.
%
%      HEARTATTACKDISEASE('Property','Value',...) creates a new HEARTATTACKDISEASE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before HeartAttackDisease_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to HeartAttackDisease_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help HeartAttackDisease

% Last Modified by GUIDE v2.5 27-May-2024 21:57:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @HeartAttackDisease_OpeningFcn, ...
                   'gui_OutputFcn',  @HeartAttackDisease_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before HeartAttackDisease is made visible.
function HeartAttackDisease_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to HeartAttackDisease (see VARARGIN)

% Choose default command line output for HeartAttackDisease
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes HeartAttackDisease wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = HeartAttackDisease_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in show.
function show_Callback(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('data.csv');
opts.SelectedVariableNames(1:7);
data = readtable('data.csv', opts);
data = table2cell(data);
data = data(:,  1:7);
set(handles.uitable1, 'Data', data);


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uitable1,'Data',cell(size(get(handles.uitable1,'Data'))));
set(handles.ROAC, 'String', '');
set(handles.ROAA, 'String', '');
set(handles.ROAB, 'String', '');
set(handles.RSGM, 'String', '');
set(handles.OGM, 'String', '');
set(handles.OPR, 'String', '');




function ROAA_Callback(hObject, eventdata, handles)
% hObject    handle to ROAA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ROAA as text
%        str2double(get(hObject,'String')) returns contents of ROAA as a double


% --- Executes during object creation, after setting all properties.
function ROAA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ROAA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ROAB_Callback(hObject, eventdata, handles)
% hObject    handle to ROAB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ROAB as text
%        str2double(get(hObject,'String')) returns contents of ROAB as a double


% --- Executes during object creation, after setting all properties.
function ROAB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ROAB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function OGM_Callback(hObject, eventdata, handles)
% hObject    handle to OGM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of OGM as text
%        str2double(get(hObject,'String')) returns contents of OGM as a double


% --- Executes during object creation, after setting all properties.
function OGM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OGM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RSGM_Callback(hObject, eventdata, handles)
% hObject    handle to RSGM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RSGM as text
%        str2double(get(hObject,'String')) returns contents of RSGM as a double


% --- Executes during object creation, after setting all properties.
function RSGM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RSGM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function OPR_Callback(hObject, eventdata, handles)
% hObject    handle to OPR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of OPR as text
%        str2double(get(hObject,'String')) returns contents of OPR as a double


% --- Executes during object creation, after setting all properties.
function OPR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OPR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ROAC_Callback(hObject, eventdata, handles)
% hObject    handle to ROAC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ROAC as text
%        str2double(get(hObject,'String')) returns contents of ROAC as a double


% --- Executes during object creation, after setting all properties.
function ROAC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ROAC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c1 = str2double(get(handles.ROAC, 'String'));
c2 = str2double(get(handles.ROAA, 'String'));
c3 = str2double(get(handles.ROAB, 'String'));
c4 = str2double(get(handles.OGM, 'String'));
c5 = str2double(get(handles.RSGM, 'String'));
c6 = str2double(get(handles.OPR, 'String'));

sample = [c1; c2; c3; c4; c5; c6];

dl = readcell('revisilagee.xlsx', 'Range', 'B19:KX24');
dl = cell2mat(dl);
tl = cell2mat(readcell('revisilagee.xlsx', 'Range', 'B8:KX8'));
net = newp([0 1;0 1;0 1;0 1;0 1;0 1], 1);
net.IW{1,1} = [1 1 1 1 1 1];
net.b{1} = [1];
net = train(net, dl, tl);
y = sim(net, sample);
if(y == 1)
set(handles.result, 'String', '	Bankrupt');
else
    set(handles.result, 'String', 'not Bankrupt');
end
