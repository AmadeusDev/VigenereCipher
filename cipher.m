function varargout = cipher(varargin)
% CIPHER MATLAB code for cipher.fig
%      CIPHER, by itself, creates a new CIPHER or raises the existing
%      singleton*.
%
%      H = CIPHER returns the handle to a new CIPHER or the handle to
%      the existing singleton*.
%
%      CIPHER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CIPHER.M with the given input arguments.
%
%      CIPHER('Property','Value',...) creates a new CIPHER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cipher_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cipher_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cipher

% Last Modified by GUIDE v2.5 30-Nov-2020 11:52:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cipher_OpeningFcn, ...
                   'gui_OutputFcn',  @cipher_OutputFcn, ...
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


% --- Executes just before cipher is made visible.
function cipher_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cipher (see VARARGIN)

% Choose default command line output for cipher
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cipher wait for user response (see UIRESUME)
% uiwait(handles.figure1);
%ah = axes('unit', 'normalized', 'position', [0 0 1 1]);
%bg = imread('locks.jpg');
%imagesc(bg);
%set(ah, 'handlevisibility','off','visible','off')

% --- Outputs from this function are returned to the command line.
function varargout = cipher_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

l=['A','B' ,'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
x = get(handles.edit1,'String');
%---------------------------------------
if ~all(isletter(x))
    message = sprintf('You must enter characters only!\nTry replacing the input and try again!');
    uiwait(warndlg(message));
end
%---------------------------------------
k = upper(x);
s11=size(k);
s1=s11(2);
%---------------------------------------
y = get(handles.edit2,'String');
%---------------------------------------
if ~all(isletter(y))
    message = sprintf('You must enter characters only!\nTry replacing the input and try again!');
    uiwait(warndlg(message));
end
%---------------------------------------
m = upper(y);
s22=size(m);
s2=s22(2);
%---------------------------------------
if s2<=s1
    v=1:s2;
    k=[k(v)];
elseif (s1<s2) && ( s2<2*s1)
    s3=s2-s1;
    v=1:s3;
    k=[[k],[k(v)]];
else s2>2*s1 
    s3=s2-2*s1;
    v=1:s3;
    k=[[k],[k],[k(v)]];   
end
%---------------------------------------
for i=1:s2
vec1(i)=find(l==(m(i)))-1 ;
vec2(i)=find(l==k(i))-1; 
end
vec=vec1+vec2+1;
%---------------------------------------
for i=1:s2
    if vec(i)>26
        vec(i)=mod(vec(i),26);
    end
end
%---------------------------------------
for i=1:s2
    vecf(i)=l(vec(i));
end
set(handles.edit3,'String' ,num2str(vecf));

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
l=['A','B' ,'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
x = get(handles.edit1,'String');
%---------------------------------------
if ~all(isletter(x))
    message = sprintf('You must enter characters only!\nTry replacing the input and try again!');
    uiwait(warndlg(message));
end
%---------------------------------------
k = upper(x);
KeySize1=size(k);
KeySize=KeySize1(2);
%---------------------------------------
y = get(handles.edit2,'String');
%---------------------------------------
if ~all(isletter(y))
    message = sprintf('You must enter characters only!\nTry replacing the input and try again!');
    uiwait(warndlg(message));
end
%---------------------------------------
m = upper(y);
WordSize2=size(m);
WordSize=WordSize2(2);
%---------------------------------------
if (WordSize<=KeySize) && (WordSize*2>KeySize)
    v=1:WordSize;
    k=[k(v)];

elseif (KeySize<WordSize) && ( WordSize<=2*KeySize)
    s3=WordSize-KeySize;
    v=1:s3;
    k=[[k],[k(v)]];
    
elseif WordSize>2*KeySize 
    s3=WordSize-2*KeySize;
    v=1:s3;
    k=[[k],[k],[k(v)]];   

end
%---------------------------------------
for i=1:WordSize
vec1(i)=find(l==(m(i)))-1;
vec2(i)=find(l==k(i))-1;
end
vec=vec1-vec2+1;
%---------------------------------------
for i=1:WordSize
    if vec(i)<0
        vec(i)=mod(vec(i),26);
    elseif vec(i)==0
        vec(i)=26;
    end
end
%---------------------------------------
for i=1:WordSize
    vecf(i)=l(vec(i));
end
set(handles.edit3,'String' ,num2str(vecf));
%---------------------------------------


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton1.
function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
