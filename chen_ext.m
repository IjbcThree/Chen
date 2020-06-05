function f=chen_ext(t,X)
%
%Chen_like equation
% a*(y-x)+d*x*z;
% (b-a)*x-x*z+b*y;
% f(3)=-e*x^2+x*y+c*z;
%
%        
%
%        See:
%    K. Ramasubramanian, M.S. Sriram, "A comparative study of computation 
%    of Lyapunov spectra with different algorithms", Physica D 139 (2000) 72-86.
%
% --------------------------------------------------------------------
% Copyright (C) 2004, Govorukhin V.N.


% Values of parameters

a = 84; d = 0.7; b = 46;  e=0.7; c=0.7;

x=X(1); y=X(2); z=X(3);

Y= [X(4), X(7), X(10);
    X(5), X(8), X(11);
    X(6), X(9), X(12)];

f=zeros(9,1);

f(1)=a*(y-x)+d*x*z;
f(2)=(b-a)*x-x*z+b*y;
f(3)=-e*x^2+x*y+c*z;

%Linearized system

 Jac=[-a+d*z,     a,        d*x;
       b-a-z,     b,            -x;
      -2*e*x+y,  x,        c];
  
%Variational equation   
f(4:12)=Jac*Y;

%Output data must be a column vector


