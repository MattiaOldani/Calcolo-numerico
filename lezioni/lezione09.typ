= Lezione 09

== Interpolazione polinomiale

Dati $N+1$ punti nel piano $(x_i, y_i) i=0,dots,N$ (i valori $y_i$ possono essere sia sperimentali che valutazioni di una funzione $f(dot)$ non nota in $x_i$), trovare il polinomio di grado $N$ $P_N (x)$ tale che $ P_N (x_i) = y_i quad i = 0, dots, N $ è il problema del polinomiale interpolatore.

Indichiamo con $PP_N$ l'insieme dei polinomi di grado $N$ e i punti $x_i quad i = 0, dots, N$ nodi di interpolazione.

Per fare sta cosa scriviamo il generico polinomio di grado $N$ e imponiamo il passaggio per i punti, ottenendo un sistema lineare che sappiamo risolvere.

Teorema: dati $N+1$ punti distinti $x_0, dots, x_N$ e $N+1$ corrispondenti valori $y_0, dots, y_N$ allora esiste uno e un solo polinomio interpolatore $P_N (x)$ di grado $N$ tale che $P_N (x_i) = y_i quad forall i = 0, dots, N$.

Dimostrazione: per assurdo esistano due polinomi $P_N (x)$ e $Q_N (x)$ in $PP_N$ tali che $ P_N (x_i) = Q_N (x_i) = y_i quad forall i = 0, dots, N . $ Ma allora $P_N (x) - Q_N (x) in PP_N$ e $P_N (x_i) - Q_N (x_i) = 0 quad forall i = 0, dots, N$, cioè quel polinomio si annulla in $N+1$ punti distinti.

Questo implica che $P_N (x) - Q_N (x) = 0 forall x in RR$ perché per il teorema fondamentale dell'algebra, l'unico polinomio di grado $N$ che si annulla in $N+1$ punti distinti è il polinomio banale identicamente nullo, quindi $P_N (x) = Q_N (x)$ unico.

Per dimostrare l'esistenza si procede in maniera costruttiva tramite metodo di Vandermonde o metodo di Lagrange.

=== Metodo di Vandermonde

Il generico polinomio è $ P_N (x) = sum_(j = 0)^N c_j x^j = c_0 + c_1 x + dots + c_N x^N . $ Se imponiamo il passaggio per i punti otteniamo un sistema lineare del tipo $ cases(c_0 + c_1 x_0 + dots + c_N x_0^N = y_0, dots, c_0 + c_1 x_N + dots + c_N x_N^N = y_N) . $

#set math.mat(delim: "[")

La matrice del sistema $ V = mat(1, x_0, dots, x_0^N; dots, dots, dots, dots; 1, x_N, dots, x_N^N) $ è detta matrice di Vandermonde. Se i punti $x_i$ sono distinti allora $det(V) eq.not 0$ e quindi la soluzione esiste ed è unica.

=== Metodo di Lagrange

Definiamo $N+1$ polinomi di Lagrange $L_i (x) i = 0, dots, N$ che soddisfano le proprietà di:
- $L_i (x) in PP_N$;
- $L_i (x_j) = 0 forall i,j = 0, dots, N and i eq.not j$;
- $L_i (x_j) = 1 forall i = 0, dots, N$.

Ogni polinomio è quindi nella forma $ L_i (x) = product_(j = 0 and j eq.not i)^N frac(x - x_j, x_i - x_j) = frac((x - x_0) dot dots dot (x - x_(i-1)) dot (x - x_(i+1)) dot dots dot (x - x_N), (x_i - x_0) dot dots dot (x_i - x_(i-1)) dot (x_i - x_(i+1)) dot dots dot (x_i - x_N)) . $

Il polinomio interpolatore è dato da $ P_N (x) = sum_(i=0)^N y_i L_i (x) . $ Infatti $forall k = 0, dots, N$ vale $ P_N (x_k) = sum_(i=0)^N L_i (x_k) = y_0 L_0 (x_k) + dots + y_k L_k (x_k) + dots + y_N L_N (x_k) = 0 + dots + y_k dot 1 + dots + 0 = y_k . $

=== Errore di interpolazione

Consideriamo $f : RR arrow.long RR$ una funzione e $N+1$ punti $(x_i, y_i) i = 0, dots, N$ tali che $y_i = f(x_i)$ e sia $P_N (x)$ il polinomio che interpola $(x_i, y_i)$.

Dato $x in RR$ chiamiamo errore di interpolazione nel punto $x$ la quantità $ abs(f(x) - P_N (x)) . $

Teorema: siano $x_0,dots,x_N$ $N+1$ nodi distinti, sia $x eq.not x_i forall i = 0, dots, N$ e sia $f in C^(N+1) (I_x)$ dove $I_x$ più piccolo intervallo chiuso e limitato contenente i nodi $x_0, dots, x_N, x$.

Allora l'errore di interpolazione nel punto $x$ è dato da $ f(x) - P_N (x) = frac(omega(x), (N+1)!) f^((N+1)) (xi) , $ con $xi in I_x$ e $ omega(x) = (x-x_0) dot dots dot (x-x_N) . $

Corollario: nelle ipotesi del teorema precedente si ha $ abs(f(x) - P_N (x)) lt.eq frac(max_(t in I_x) abs(omega(t)), (N+1)!) max_(t in I_x) abs(f^((N+1)) (t)) . $

In generale non si può dedurre dal teorema e dal corollario che l'errore tende a $0$ per $N arrow infinity$. Infatti esistono funzioni per le quali l'errore può essere infinito, ossia $ lim_(n arrow infinity) max_(x in I_x) abs(f(x) - P_N (x)) = +infinity . $

Una funzione è il controesempio di Runge, ovvero interpoliamo $f(x) = frac(1, 1+x^2)$ nell'intervallo $[-5,5]$ su nodi equispaziati. Se $N arrow infinity$ allora l'errore cresce.

Un altro rimedio è utilizzare i nodi di Chebishev, definiti:
- sull'intervallo $[-1,1]$ da $ x_i = cos(pi frac(2i + 1, 2(N+1))) i = 0, dots, N ; $
- sul generico intervallo $[a,b]$ da $ x_i = frac(a+b,2) + (b-a,2) cos(pi frac(2i + 1, 2(N+1))) i = 0, dots, N . $
