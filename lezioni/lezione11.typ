= Lezione 11

== Minimi quadrati e spline lineari

Dati $N+1$ punti $(x_i, y_i) i = 0, dots, N$ dove eventualmente $y_i = f(x_i)$, vogliamo trovare la retta $R(x) = a_0 + a_1 x$ che renda minima la funzione $ E(a_0, a_1) = sum_(i=0)^N (y_i - R(x_i))^2 = sum_(i=0)^N (y_i - (a_0 + a_1 x_1))^2 $ al variare dei coefficienti $a_0,a_1$.

Diciamo che $R(x)$ approssima l'insieme dei dati nel senso dei minimi quadrati e questa retta è la retta dei minimi quadrati o retta di regressione.

Il minimo della funzione $E(a_0,a_1)$ si ottiene imponendo le condizioni $ cases(frac(diff E(a_0,a_1), diff a_0) = 0, frac(diff E(a_0,a_1), diff a_1) = 0) . $ Svolgendo i conti abbiamo $ cases(sum_(i=0)^N 2(y_i - a_0 - a_1 x_i)(-1) = 0, sum_(i=0)^N 2(y_i - a_0 - a_1 x_1)(-x_i) = 0) . $ Dobbiamo quindi risolvere il sistema lineare $ cases((N+1) a_0 + (sum_(i=0)^N x_i) a_1 = sum_(i=0)^N y_i, (sum_(i=0)^N x_i) a_0 + (sum_(i=0)^N x_i^2) a_1 = sum_(i=0)^N x_i y_i) . $ Tale sistema è detto sistema delle equazioni normali.

Dato un insieme di punti $(x_i,y_i) i = 0, dots, N$ con $a = x_0 < x_1 < dots < x_n = b$, una spline lineare interpolante è una funzione $S^1 (x) : [a,b] arrow.long RR$ tale che:
- $S^1$ è un polinomio di grado 1 su ogni sotto-intervallo $[x_(i-1), x_i] i = 1, dots, N$;
- $S^1$ è continua su $[a,b]$;
- $S^1 (x_i) = y_i$ con $i = 0, dots, N$.

La possiamo vedere come una funzione a tratti formata da $N$ funzioni lineari, ognuna delle quali passa per due punti consecutivi.

Consideriamo una funzione $f : RR arrow.long RR$ e $N+1$ punti $(x_i,y_i) i = 0, dots, N$ con $f(x_i) = y_i$. Sia $S^1 (x)$ la spline lineare che interpola i punti $(x_i,y_i)$.

Dato $x in RR$ chiamiamo errore di interpolazione nel punto $x$ la quantità $ abs(f(x) - S^1 (x)) . $

Teorema: sia $f in C^2 ([a,b])$, allora $ max_(x in [a,b]) abs(f(x) - S^1 (x)) lt.eq 1/8 h^2 max_(x in [a,b]) abs(f^((2)) (x)) $ con $ h = max_(0 lt.eq i lt.eq N-1) (x_(i+1) - x_i) . $
