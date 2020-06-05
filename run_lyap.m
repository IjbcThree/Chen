clc;
clear;

[T,Res]=lyapunov(3,@chen_ext,@ode45,0,0.5,300000,[-5.11403*1e-6  1.31403*1e-6  0.7*1e-7],1000);


% figure(1)
% plot(T,Res(:,1:2));
% axis([-inf inf -0.05 0])
% gtext('L_1 = -0.005842 '),gtext('L_2 =  -0.037049');
% xlabel('t'); ylabel('Lyapunov exponents');
%  grid on

% figure(2)
%  plot(T,Res(:,3));
% axis([-inf inf -1 0])
% gtext('L_3 =-0.782883');
% xlabel('t'); ylabel('Lyapunov exponents');
% grid on