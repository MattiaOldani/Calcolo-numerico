% Esercizio 01

% Dati
p = [1 -1 4 -1];
q = [1 -3 -1];

% Richieste
polysum(p, -q)
polysum(3*p, 5*q)
conv(p, q)
polysum(2*conv(p,p), -3*conv(conv(q,q),q))

deconv(p,q)

polyder(p)

polyval(p,3) - polyval(q,3)
