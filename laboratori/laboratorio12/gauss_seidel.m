function [x,nit] = gauss_seidel(A,b,x0,toll,nitmax)

D = diag(diag(A));
E = -tril(A,-1);
F = -triu(A,1);

it = 0;
err = toll + 1;
new_x = x0;
norm_b = norm(b,inf);

while it < nitmax && err > toll
    old_x = new_x;
    new_x = (D-E)\(b + F*old_x);
    it = it + 1;
    err = max(norm(new_x-old_x, inf) / norm(new_x,inf), (norm(b-A*old_x, inf) / norm_b));
end

x = new_x;
nit = it;

if it == nitmax && err > toll
    disp("Gauss-Seidel non coverge.");
end

return

end
