function varargout = gui_lina(varargin)
% GUI_LINA MATLAB code for gui_lina.fig
%      GUI_LINA, by itself, creates a new GUI_LINA or raises the existing
%      singleton*.
%
%      H = GUI_LINA returns the handle to a new GUI_LINA or the handle to
%      the existing singleton*.
%
%      GUI_LINA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_LINA.M with the given input arguments.
%
%      GUI_LINA('Property','Value',...) creates a new GUI_LINA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_lina_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_lina_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_lina

% Last Modified by GUIDE v2.5 30-Apr-2020 21:13:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_lina_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_lina_OutputFcn, ...
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

% --- Executes just before gui_lina is made visible.
function gui_lina_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_lina (see VARARGIN)

% Choose default command line output for gui_lina
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_lina wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_lina_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in encode_edit.
function encode_edit_Callback(hObject, eventdata, handles)
% hObject    handle to encode_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% fs=10000;
% n = 1:8000;
% a = inputdlg('Enter')
a=get(handels.text_edit,'string');
set(handels.myedit,'string',a);

%audiowrite('NameOfFile.wav',x,fs)



% --- Executes on button press in save_1edit.
function save_1edit_Callback(hObject, eventdata, handles)
% hObject    handle to save_1edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fs=10000;
a=get(handles.text_1edit,'string');
x=Encoder(a);
audiowrite('lr.wav', x, fs)

% --- Executes on button press in sound_1edit.
function sound_1edit_Callback(hObject, eventdata, handles)
% hObject    handle to sound_1edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fs=10000;
a=get(handles.text_1edit,'string');
x=Encoder(a);
sound( x,fs);

function text_1edit_Callback(hObject, eventdata, handles)
% hObject    handle to text_1edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_1edit as text
%        str2double(get(hObject,'String')) returns contents of text_1edit as a double



% --- Executes during object creation, after setting all properties.
function text_1edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_1edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function myedit_Callback(hObject, eventdata, handles)
% hObject    handle to myedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of myedit as text
%        str2double(get(hObject,'String')) returns contents of myedit as a double


% --- Executes during object creation, after setting all properties.
function myedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to myedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in encode_1edit.
function encode_1edit_Callback(hObject, eventdata, handles)
% hObject    handle to encode_1edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text_1edit,'string');
x=Encoder(a);
plot(x(1:400))


% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
