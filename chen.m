
function ydot=chen(t,y,a,d,b,e,c)
% the model

ydot=[a*(y(2)-y(1))+d*y(1)*y(3);(b-a)*y(1)-y(1)*y(3)+b*y(2);-e*y(1)^2+y(1)*y(2)+c*y(3)];

