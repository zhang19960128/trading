function varargout = myaccount(varargin)
% MYACCOUNT MATLAB adafsf for myaccount.fig
%      MYACCOUNT, by itself, creates a new MYACCOUNT or raises the existing
%      singleton*.
%
%      H = MYACCOUNT returns the handle to a new MYACCOUNT or the handle to
%      the existing singleton*.
%
%      MYACCOUNT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MYACCOUNT.M with the given input arguments.
%
%      MYACCOUNT('Property','Value',...) creates a new MYACCOUNT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before myaccount_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to myaccount_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help myaccount

% Last Modified by GUIDE v2.5 13-Apr-2017 22:13:46

% Begin initialization adafsf - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @myaccount_OpeningFcn, ...
                   'gui_OutputFcn',  @myaccount_OutputFcn, ...
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
% End initialization adafsf - DO NOT EDIT


% --- Executes just before myaccount is made visible.
function myaccount_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to myaccount (see VARARGIN)

% Choose default command line output for myaccount
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes myaccount wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = myaccount_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function name_Callback(hObject, eventdata, handles)
% hObject    handle to name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of name as text
%        str2double(get(hObject,'String')) returns contents of name as a double


% --- Executes during object creation, after setting all properties.
function name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function code_Callback(hObject, eventdata, handles)
% hObject    handle to adafsf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of adafsf as text
%        str2double(get(hObject,'String')) returns contents of adafsf as a double


% --- Executes during object creation, after setting all properties.
function adafsf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to adafsf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function income_Callback(hObject, eventdata, handles)
% hObject    handle to income (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of income as text
%        str2double(get(hObject,'String')) returns contents of income as a double


% --- Executes during object creation, after setting all properties.
function income_CreateFcn(hObject, eventdata, handles)
% hObject    handle to income (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outcome_Callback(hObject, eventdata, handles)
% hObject    handle to outcome (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outcome as text
%        str2double(get(hObject,'String')) returns contents of outcome as a double


% --- Executes during object creation, after setting all properties.
function outcome_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outcome (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in incomesave.
function incomesave_Callback(hObject, eventdata, handles)
% hObject    handle to incomesave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
stockname=get(handles.name,'string');
stockcode=get(handles.code,'string');
income=get(handles.income,'string');
incomeprice=get(handles.incomeprice,'string');
pathID=strcat(pwd,'\tradingdata\income.txt');
fileID=fopen(pathID,'a');
disp('´¢´æÍê±Ï');
fprintf(fileID,'date:%s\n',datestr(datetime('now')));
fprintf(fileID,'name:%s\n',stockname);
fprintf(fileID,'code:%s\n',stockcode);
fprintf(fileID,'number:%s\n',income);
fprintf(fileID,'price:%s\n',incomeprice);
fprintf(fileID,'*****************\n');




% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
stockname=get(handles.name,'string');
stockcode=get(handles.code,'string');
outcome=get(handles.outcome,'string');
outprice=get(handles.outprice,'string');
pathID=strcat(pwd,'\tradingdata\outcome.txt');
fileID=fopen(pathID,'a');
disp('´¢´æÍê±Ï');
fprintf(fileID,'date:%s\n',datestr(datetime('now')));
fprintf(fileID,'name:%s\n',stockname);
fprintf(fileID,'code:%s\n',stockcode);
fprintf(fileID,'number:%s\n',outcome);
fprintf(fileID,'price:%s\n',outprice);
fprintf(fileID,'*****************\n');


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
pathIDin=strcat(pwd,'\tradingdata\income.txt');
pathIDout=strcat(pwd,'\tradingdata\outcome.txt');
fileIDin=fopen(pathIDin,'r');
fileIDout=fopen(pathIDout,'r');
strdate='date:*';
strname='name:*';
strcode='code:*';
strnumber='number:*';
strprice='price:*';
stockcodeoutlist={};
stockoutmoneylist=[];
stockinmoneylist=[];
line=fgets(fileIDout);
while ischar(line)
     matchdate=regexp(line,strdate,'split');
     line=fgets(fileIDout);
     matchname=regexp(line,strname,'split');
     line=fgets(fileIDout);
     matchcode=regexp(line,strcode,'split');
     line=fgets(fileIDout);
     matchnumber=regexp(line,strnumber,'split')
     line=fgets(fileIDout);
     matchprice=regexp(line,strprice,'split')
     if(str2num(matchprice{2})*str2num(matchnumber{2})*2.5*10^(-5)>5)
         fee=str2num(matchprice{2})*str2num(matchnumber{2})*2.5*10^(-5)+str2num(matchprice{2})*str2num(matchnumber{2})*0.001;
     else
         fee=5+str2num(matchprice{2})*str2num(matchnumber{2})*0.001;
     end
     money=str2num(matchprice{2})*str2num(matchnumber{2})-fee
     strcmp(matchcode{2},stockcodeoutlist)
    %     stockcodeoutlist=[stockcodeoutlist,matchcode{2}];
    %     stockoutmoneylist=[stockoutmoneylist,money];
    % else
    %     tick=find(cell2mat(strcmp(matchcode{2},stockcodeoutlist))==1,1);
    %     stockoutmoneylist=stockoutmoneylist(tick)+money;
    % end
    % line=fgets(fileIDout);
    % line=fgets(fileIDout);
    % stockoutmoneylist
end


% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function inprice_Callback(hObject, eventdata, handles)
% hObject    handle to inprice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inprice as text
%        str2double(get(hObject,'String')) returns contents of inprice as a double


% --- Executes during object creation, after setting all properties.
function inprice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inprice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outprice_Callback(hObject, eventdata, handles)
% hObject    handle to outprice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outprice as text
%        str2double(get(hObject,'String')) returns contents of outprice as a double


% --- Executes during object creation, after setting all properties.
function outprice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outprice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function incomeprice_Callback(hObject, eventdata, handles)
% hObject    handle to incomeprice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of incomeprice as text
%        str2double(get(hObject,'String')) returns contents of incomeprice as a double


% --- Executes during object creation, after setting all properties.
function incomeprice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to incomeprice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function code_CreateFcn(hObject, eventdata, handles)
% hObject    handle to code (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
