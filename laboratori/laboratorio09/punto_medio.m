function [area] = punto_medio(a,b,m,f)

x = linspace(a,b,m+1);
H = (b-a)/m;
area = H * sum(f(x(1:end-1) + H/2));
return

end
