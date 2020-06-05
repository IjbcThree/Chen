clc;
clear;
fsize=1.5;
psize=15;
tsn = [0,3000];
ini1 = [-5.11403*1e-6  1.31403*1e-6  0.7*1e-7];
%  three negative Lyapunov exponents
[t,e] = ode45(@chen,tsn,ini1,'AbsTol',84,0.7,46,0.7,0.7);

plot3(e(:,1),e(:,2),e(:,3),'m');
axis auto square
grid on
xlabel('x','FontSize',psize),ylabel('y','FontSize',psize),zlabel('z','FontSize',psize);



