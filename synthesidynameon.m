clear all;close all;
%format statheron
g=9.81; 
F1=[1 0 3 4];
F2=[1 2 3 4];
prompt = {'Eisigage to athrisma ton dynameon sto x aksona','Eisigage to athrisma ton dynameon sto y aksona','m'};
dlgtitle = 'Input';
dims = [1 35];
definput = {'20','8','1'};
answer = inputdlg(prompt,dlgtitle,dims,definput)
%answer = inputdlg(prompt)
%input = str2num(answer{1})
SFx=str2num(answer{1});
SFy=str2num(answer{2});
m=str2num(answer{3});
SF=sqrt(SFx^2+SFy^2-2*SFx.*SFy);
a=SF/m;
x=linspace(0,100,1000);
t=linspace(0,10,1000);
prompt1 = {'Eisigage to athrisma tin arxiki thesi','Eisigage tin arxiki taxytita','eishgage tin epitaxinnsi'};
dlgtitle1 = 'In1put';
dims = [1 35];
definput1 = {'2','3','2'};
answer1 = inputdlg(prompt1,dlgtitle1,dims,definput)
x0=str2num(answer1{1});
u0=str2num(answer{2});
a=str2num(answer{3});
X=x0+u0*t+0.5*a*t.^2;
U=u0*t+a*t;
figure(1)
plot(X,t);
text(10,0.9,'eksisosi thesis/taxititas','fontsize',16)
hold on;
grid on;
figure(2)
plot(U,t);
title('Diagramma taxytitas');
hold on;
figure(3)
plot(X,x);
title('Diagrama taxytitas thesis');
hold
plot(U,x);