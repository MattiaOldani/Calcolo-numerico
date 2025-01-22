// Setup

// Capitolo

= Codici utilizzati

Come per la parte di teoria, di seguito vediamo un riassunto degli script file che sono stati utilizzati durante le lezioni di laboratorio, così da averli a disposizione subito senza doverseli ricordare.

== Sistemi lineari

#v(10pt)

#align(center)[
  #block(stroke: black, inset: 10pt)[
    ```matlab
    function [x,nit] = jacobi(A,b,x0,toll,nitmax)

    D = diag(diag(A));
    E = -tril(A,-1);
    F = -triu(A,1);

    it = 0;
    err = toll + 1;
    new_x = x0;
    norm_b = norm(b,inf);

    while it < nitmax && err > toll
        old_x = new_x;
        new_x = D\(b + (E + F)*old_x);
        it = it + 1;
        fe = norm(new_x-old_x, inf) / norm(new_x,inf);
        se = (norm(b-A*old_x, inf) / norm_b);
        err = max(fe, se);
    end

    x = new_x;
    nit = it;

    if it == nitmax && err > toll
        disp("Jacobi non converge.");
    end

    return

    end
    ```
  ]
]

#align(center)[
  #block(stroke: black, inset: 10pt)[
    ```matlab
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
        fe = norm(new_x-old_x, inf) / norm(new_x,inf);
        se = (norm(b-A*old_x, inf) / norm_b);
        err = max(fe, se);
    end

    x = new_x;
    nit = it;

    if it == nitmax && err > toll
        disp("Gauss-Seidel non converge.");
    end

    return

    end
    ```
  ]
]

== Interpolazione polinomiale

#v(10pt)

#align(center)[
  #block(stroke: black, inset: 10pt)[
    ```matlab
    function [pq] = polysum(p,q)

    lenp = length(p);
    lenq = length(q);

    if lenp < lenq
        pad = lenq - lenp;
        p = [zeros(1,pad) p];
    end

    if lenq < lenp
        pad = lenp - lenq;
        q = [zeros(1,pad) q];
    end

    pq = p + q;
    return

    end
    ```
  ]
]

== Integrazione numerica

#v(10pt)

#align(center)[
  #block(stroke: black, inset: 10pt)[
    ```matlab
    function [area] = punto_medio(a,b,m,f)

    x = linspace(a,b,m+1);
    H = (b-a)/m;
    area = H * sum(f(x(1:end-1) + H/2));
    return

    end
    ```
  ]
]

#align(center)[
  #block(stroke: black, inset: 10pt)[
    ```matlab
    function [area] = cavalieri_simpson(a,b,m,f)

    x = linspace(a,b,m+1);
    H = (b-a)/m;

    fs = 2*sum(f(x(2:end-1)));
    ss = 4*sum(f(x(1:end-1) + H/2));
    area = H * (f(a) + fs + ss + f(b)) / 6;

    return

    end
    ```
  ]
]

== Zeri di funzione

#v(10pt)

#align(center)[
  #block(stroke: black, inset: 10pt)[
    ```matlab
    function [x,nit] = bisezione(f, a, b, toll)

    if f(a)*f(b) > 0
        disp("Intervallo non accettabile")
        x = [];
        nit = 0;
        return
    end

    k = 1;
    ak = a;
    bk = b;
    xk = (ak+bk)/2;
    err = (bk-ak)/2;

    while err > toll
        if f(xk) == 0
            break
        end

        if f(ak)*f(xk) < 0
            bk = xk;
        else
            ak = xk;
        end

        xk = (ak+bk)/2;
        err = err/2;
        k = k + 1;
    end

    x = xk;
    nit = k;

    return

    end
    ```
  ]
]

#align(center)[
  #block(stroke: black, inset: 10pt)[
    ```matlab
    function [x,nit] = newton(f, df, x0, toll, nitmax)

    k = 0;
    err = toll + 1;

    while k < nitmax && err > toll
        xk = x0 - (f(x0))/(df(x0));

        err = abs(xk - x0);
        k = k + 1;

        x0 = xk;
    end

    nit = k;
    if k == nitmax && err > toll
        disp("Il metodo di Newton non converge");
        x = 0;
    else
        x = xk;
    end

    return

    end
    ```
  ]
]

== Equazioni differenziali ordinarie

#align(center)[
  #block(stroke: black, inset: 10pt)[
    ```matlab
    function [T,Y] = eulero(fun, T, y0)

    u0 = y0;
    h = T(2) - T(1);

    Y = y0;
    for n = 2:length(T)
        tn = T(n-1);
        un = u0 + h * fun(tn,u0);

        Y = [Y un];
        u0 = un;
    end

    T = T';
    Y = Y';

    return

    end
    ```
  ]
]

#align(center)[
  #block(stroke: black, inset: 10pt)[
    ```matlab
    function [T,U] = eulero_implicito(f,T,y0,dfy,toll,nitmax)

    u0 = y0;
    h = T(2) - T(1);

    U = u0;
    for i = 2:length(T)
        % Newton
        err = toll + 1;
        nit = 0;
        y = U(i-1);
        un = U(i-1);
        while nit < nitmax && err > toll
            yk = y - (y - un - h*f(T(i),y))/(1 - h*dfy(T(i),y));
            err = abs(yk - y);
            y = yk;
            nit = nit + 1;
        end

        if nit == nitmax && err > toll
            disp("Il metodo di Netwon adattato non converge")
            T = T';
            U = [];
            return
        end

        U = [U yk];
    end

    T = T';
    U = U';
    return

    end
    ```
  ]
]

#align(center)[
  #block(stroke: black, inset: 10pt)[
    ```matlab
    function [T,U] = crank_nicolson(f,T,y0,dfy,toll,nitmax)

    if nargin == 4
        toll = 1e-6;
        nitmax = 20;
    elseif nargin == 5
        nitmax = 20;
    end

    h = T(2) - T(1);
    U = y0;

    for n = 2:length(T)
        % Newton
        err = toll + 1;
        nit = 0;
        un = U(n-1);
        x0 = U(n-1);
        t0 = T(n-1);
        tn = T(n);

        while nit < nitmax && err > toll
            n1 = un + h/2 * f(t0,un);
            n2 = h/2 * f(tn,x0);
            num = x0 - n1 - n2;
            den = 1 - h/2 * dfy(tn,x0);

            xk = x0 - num/den;

            err = abs(xk - x0);
            x0 = xk;
            nit = nit + 1;
        end

        if nit == nitmax && err > toll
            disp("Il metodo di Netwon esotico non converge.")
            T = T';
            U = [];
            return
        end

        U = [U xk];
    end

    T = T';
    U = U';
    return

    end
    ```
  ]
]

#align(center)[
  #block(stroke: black, inset: 10pt)[
    ```matlab
    function [T,U] = heun(f,T,y0)

    h = T(2) - T(1);
    u0 = y0;
    U = y0;

    for n = 2:length(T)
        t0 = T(n-1);
        tn = T(n);

        un = u0 + (h/2) * (f(t0,u0) + f(tn,u0 + h*f(t0,u0)));

        U = [U un];
        u0 = un;
    end

    T = T';
    U = U';
    return

    end
    ```
  ]
]
