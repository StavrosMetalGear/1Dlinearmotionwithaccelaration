clear all;close all;
%format statheron
g=9.81; 


prompt = {'Eisigage tin arxiki thesi(m) kai tin arxiki taxitita(m/s) kai tin epitaxinsi tou provlimatos'};
dlgtitle = 'x0',;
dims = [1 40];

definput = {'10',};
opts.Interpreter = 'tex';
answer = inputdlg(prompt,dlgtitle,dims,definput,opts);
dlgtitle1 = 'u0';
dims = [1 40];
definput1 = {'3'};
opts.Interpreter1 = 'tex';
answer1 = inputdlg(prompt,dlgtitle1,dims,definput1,opts);
dlgtitle2 = 'a';
dims = [1 40];
definput2 = {'2'};
opts.Interpreter2 = 'tex';
answer2 = inputdlg(prompt,dlgtitle2,dims,definput2,opts);
prompt1 = {'Eisigage tis oriakes times tis thesis tou provlimatos'};

dlgtitle3 = 'x-';
dims = [1 40];
definput3={'0'};

opts.Interpreter3='tex';
answer3 = inputdlg(prompt,dlgtitle3,dims,definput3,opts);
dlgtitle4 = 'x+';
dims = [1 40];
definput4={'100'};
opts.Interpreter4='tex';
answer4 = inputdlg(prompt,dlgtitle4,dims,definput4,opts);
x0 = str2double(answer{1});
u0 = str2double(answer1{1});
a = str2double(answer2{1});
x1 = str2double(answer3{1});
x2 = str2double(answer4{1});
x=linspace(-x1,x2,100)
t=linspace(0,10,100);
X=x0+u0*t+0.5*a*t.^2;
U=u0*t+a*t;
figure(1)
plot(X,t);
text(10,0.9,'eksisosi thesis/taxititas','fontsize',16)
hold on;
grid on;
figure(2)
plot(U,t);
hold on;
figure(3)
plot(X,x);
hold
plot(U,x);
