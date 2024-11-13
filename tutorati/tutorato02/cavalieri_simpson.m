function [area] = cavalieri_simpson(a,b,m,f)

x = linspace(a,b,m+1);
H = (b-a)/m;

fs = 2*sum(f(x(2:end-1)));
ss = 4*sum(f(x(1:end-1) + H/2));
area = H * (f(a) + fs + ss + f(b)) / 6;

return

end
