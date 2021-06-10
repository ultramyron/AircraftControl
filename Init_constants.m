% init constants for rcam simulation

clear; clc;

%% define constants

x0 = [   84.9905;
   -0.0000;
    1.2713;
   -0.0000;
    0.0000;
    0.0000;
   -0.0000;
    0.0150;
   -0.0000];
    
u = [    0.0000;
   -0.1780;
    0.0000;
    0.0821;
    0.0821];

TF = 3*60;


% define min/max control values
u1min = -25*pi/180;
u1max = 25*pi/180;

u2min = -25*pi/180;
u2max = 10*pi/180;

u3min = -30*pi/180;
u3max = 30*pi/180;

% u4min = .5*pi/180;
u4min = 0;
u4max = 10*pi/180;

u5min = .5*pi/180;
u5max = 10*pi/180;

%% run the model

sim('RCAM_FUNCTION.slx')

%% plot the results

t = simX.Time;

u1 = simU.Data(:,1);
u2 = simU.Data(:,2);
u3 = simU.Data(:,3);
u4 = simU.Data(:,4);
u5 = simU.Data(:,5);

x1 = simX.Data(:,1);
x2 = simX.Data(:,2);
x3 = simX.Data(:,3);
x4 = simX.Data(:,4);
x5 = simX.Data(:,5);
x6 = simX.Data(:,6);
x7 = simX.Data(:,7);
x8 = simX.Data(:,8);
x9 = simX.Data(:,9);

figure
subplot(5,1,1)
plot(t,u1)
legend('u_1')
grid on

subplot(5,1,2)
plot(t,u2)
legend('u_2')
grid on

subplot(5,1,3)
plot(t,u3)
legend('u_3')
grid on

subplot(5,1,4)
plot(t,u4)
legend('u_4')
grid on

subplot(5,1,5)
plot(t,u5)
legend('u_5')
grid on

% plot the states

figure

% u, v, w

subplot(3,3,1)
plot(t,x1)
legend('x_1')
grid on

subplot(3,3,4)
plot(t,x2)
legend('x_2')
grid on

subplot(3,3,7)
plot(t,x3)
legend('x_3')
grid on

% p, q, r
subplot(3,3,2)
plot(t,x4)
legend('x_4')
grid on

subplot(3,3,5)
plot(t,x5)
legend('x_5')
grid on

subplot(3,3,8)
plot(t,x6)
legend('x_6')
grid on

% phi, theta, psi
subplot(3,3,3)
plot(t,x7)
legend('x_7')
grid on

subplot(3,3,6)
plot(t,x8)
legend('x_8')
grid on

subplot(3,3,9)
plot(t,x9)
legend('x_9')
grid on
