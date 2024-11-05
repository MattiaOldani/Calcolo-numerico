= Laboratorio 09

Possiamo partizionare un intervallo in $m$ sotto-intervallo e interpolare con Lagrange ogni singolo sotto-intervallo. Il caso più semplice è la *spline lineare interpolante*, ovvero interpolare con delle rette ogni sotto-intervallo. In Matlab possiamo trovare una spline con il comando "griddedInterpolant(x,y,'linear')".

Se $H$ è la massima ampiezza dei sotto-intervalli e $E(H)$ l'errore di approssimazione tra la spline e la funzione in quel sotto-intervallo, si dimostra che $E(H) lt.eq C H^2$.

Per approssimare una funzione integrale in matlab abbiamo la funzione "integral(f,a,b)". Questo produce un errore assoluto minore di $1e-10$ e/o un errore relativo minore di $1e-6$.

Abbiamo tre formule di quadratura per approssimare un integrale:
- punto medio (semplice e composito);
- trapezi (semplice e composito);
- cavalieri-simpson (semplice e composito).

Per trapezi composita abbiamo in Matlab la funzione "trapz(x,y)".

La formula dei trapezi semplice è uguale a integrare la retta interpolante della funzione integranda negli estremi dell'intervallo. La formula dei trapezi composita è uguale a integrare la spline lineare della funzione integranda nei punti di quadratura.

Per punto medio e trapezi l'errore è $O(H^2)$, mentre per cavalieri-simpson l'errore è $O(H^4)$.
