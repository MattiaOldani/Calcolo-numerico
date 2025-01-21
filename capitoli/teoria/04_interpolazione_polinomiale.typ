// Setup

#import "../alias.typ": *

#import "@local/typst-theorems:1.0.0": *
#show: thmrules.with(qed-symbol: $square.filled$)

// Capitolo

= Interpolazione polinomiale

== Polinomio interpolatore

Dati $N+1$ punti nel piano $(x_i, y_i) quad i = 0, dots, N$, con $y_i$ valori che possono essere sia sperimentali che valutazioni di una funzione $f(dot)$ non nota in $x_i$, trovare il polinomio di grado $N$ $P_N (x)$ tale che $ P_N (x_i) = y_i quad i = 0, dots, N $ è il problema del *polinomiale interpolatore*.

Indichiamo con $PP_N$ l'insieme dei polinomi di grado $N$ e con $x_i quad i = 0, dots, N$ i punti detti *nodi di interpolazione*.

Per risolvere questo problema scriviamo il generico polinomio di grado $N$ e imponiamo il passaggio per i punti dati, ottenendo un sistema lineare che sappiamo risolvere con i metodi visti nel capitolo precedente.

#theorem()[
  Dati $N+1$ punti distinti $x_0, dots, x_N$ e $N+1$ corrispondenti valori $y_0, dots, y_N$, esiste uno e un solo polinomio interpolatore $P_N (x)$ di grado $N$ tale che $ P_N (x_i) = y_i quad forall i = 0, dots, N . $
]

#proof()[
  Assumiamo per assurdo che esistano due polinomi $P_N (x)$ e $Q_N (x)$ in $PP_N$ tali che $ P_N (x_i) = Q_N (x_i) = y_i quad forall i = 0, dots, N . $ Ma allora $P_N (x) - Q_N (x) in PP_N$ e $P_N (x_i) - Q_N (x_i) = 0 quad forall i = 0, dots, N$, cioè quel polinomio si annulla in $N+1$ punti distinti.

  Questo implica che $P_N (x) - Q_N (x) = 0 quad forall x in RR$ perché per il teorema fondamentale dell'algebra, l'unico polinomio di grado $N$ che si annulla in $N+1$ punti distinti è il polinomio banale identicamente nullo, quindi $P_N (x) = Q_N (x)$ e quindi $P_N (x)$ è unico.
]

Per dimostrare l'esistenza si procede in maniera costruttiva tramite *metodo di Vandermonde* o *metodo di Lagrange*.

=== Metodo di Vandermonde

Il generico polinomio è $ P_N (x) = sum_(j = 0)^N c_j x^j = c_0 + c_1 x + dots + c_N x^N . $ Se imponiamo il passaggio per i punti otteniamo un sistema lineare del tipo $ cases(c_0 + c_1 x_0 + dots + c_N x_0^N = y_0, dots, c_0 + c_1 x_N + dots + c_N x_N^N = y_N) . $ Questo metodo è implementato dalla funzione _polyfit_ di Matlab.

#set math.mat(delim: "[")

La matrice del sistema $ V = mat(1, x_0, dots, x_0^N; dots.v, dots.v, dots.v, dots.v; 1, x_N, dots, x_N^N) $ è detta *matrice di Vandermonde*. Se i punti $x_i$ sono distinti allora $det(V) eq.not 0$ e quindi la soluzione esiste ed è unica.

=== Metodo di Lagrange

Definiamo $N+1$ polinomi di Lagrange $L_i (x) quad i = 0, dots, N$ che soddisfano le seguenti proprietà:
- $L_i (x) in PP_N$;
- $L_i (x_j) = 0 quad forall i quad forall j = 0, dots, N and i eq.not j$;
- $L_i (x_j) = 1 quad forall i = 0, dots, N$.

In pratica sono tutti polinomi $L_i$ che si annullano in tutti i valori che non sono $x_i$.

Ogni polinomio è quindi nella forma $ L_i (x) = product_(j = 0 and j eq.not i)^N frac(x - x_j, x_i - x_j) = frac((x - x_0) dot dots dot (x - x_(i-1)) dot (x - x_(i+1)) dot dots dot (x - x_N), (x_i - x_0) dot dots dot (x_i - x_(i-1)) dot (x_i - x_(i+1)) dot dots dot (x_i - x_N)) . $

Il polinomio interpolatore è dato da $ P_N (x) = sum_(i=0)^N y_i L_i (x) . $ Infatti, $forall k = 0, dots, N$ vale $ P_N (x_k) = sum_(i=0)^N L_i (x_k) &= y_0 L_0 (x_k) + dots + y_k L_k (x_k) + dots + y_N L_N (x_k) = \ &= 0 + dots + y_k dot 1 + dots + 0 = y_k . $

=== Errore di interpolazione

Consideriamo $f : RR arrow.long RR$ una funzione e $N+1$ punti $(x_i, y_i) quad i = 0, dots, N$ tali che $y_i = f(x_i)$, e sia $P_N (x)$ il polinomio che interpola i punti $(x_i, y_i)$.

Dato $x in RR$, chiamiamo *errore di interpolazione* nel punto $x$ la quantità $ abs(f(x) - P_N (x)) . $

#theorem()[
  Siano:
  - $x_0, dots, x_N$ un insieme di $N+1$ nodi distinti;
  - $x eq.not x_i quad forall i = 0, dots, N$;
  - $f in C^(N+1) (I_x)$, dove $I_x$ più piccolo intervallo chiuso e limitato contenente i nodi $x_0, dots, x_N, x$.

  Allora l'errore di interpolazione nel punto $x$ è dato da $ f(x) - P_N (x) = frac(omega(x), (N+1)!) f^((N+1)) (xi) , $ con $xi in I_x$ e $ omega(x) = (x-x_0) dot dots dot (x-x_N) . $
]

#corollary()[
  Nelle ipotesi del teorema precedente si ha $ abs(f(x) - P_N (x)) lt.eq frac(max_(t in I_x) abs(omega(t)), (N+1)!) max_(t in I_x) abs(f^((N+1)) (t)) . $
]

In generale non si può dedurre dal teorema e dal corollario che l'errore tende a $0$ per $N arrow infinity$. Infatti esistono funzioni per le quali l'errore può essere infinito, ossia $ lim_(n arrow infinity) max_(x in I_x) abs(f(x) - P_N (x)) = +infinity . $

Una funzione che ha questo comportamento è il *controesempio di Runge*, ovvero interpoliamo $f(x) = frac(1, 1+x^2)$ nell'intervallo $[-5,5]$ su nodi equispaziati. Se $N arrow infinity$ allora l'errore cresce.

Una soluzione è utilizzare i *nodi di Chebishev*, definiti:
- sull'intervallo $[-1,1]$ da $ x_i = cos(pi frac(2i + 1, 2(N+1))) quad i = 0, dots, N ; $
- sul generico intervallo $[a,b]$ da $ x_i = frac(a+b,2) + (b-a,2) cos(pi frac(2i + 1, 2(N+1))) quad i = 0, dots, N . $

== Retta di regressione

Dati $N+1$ punti $(x_i, y_i) quad i = 0, dots, N$ dove eventualmente $y_i = f(x_i)$, vogliamo trovare la retta $R(x) = a_0 + a_1 x$ che renda minima la funzione $ E(a_0, a_1) = sum_(i=0)^N (y_i - R(x_i))^2 = sum_(i=0)^N (y_i - (a_0 + a_1 x_1))^2 $ al variare dei coefficienti $a_0,a_1$.

Diciamo che $R(x)$ approssima l'insieme dei dati *nel senso dei minimi quadrati* e questa retta è la *retta dei minimi quadrati* o *retta di regressione*.

Il minimo della funzione $E(a_0,a_1)$ si ottiene imponendo le condizioni $ cases(frac(diff E(a_0,a_1), diff a_0) = 0, frac(diff E(a_0,a_1), diff a_1) = 0) . $ Svolgendo i conti abbiamo $ cases(sum_(i=0)^N 2(y_i - a_0 - a_1 x_i)(-1) = 0, sum_(i=0)^N 2(y_i - a_0 - a_1 x_1)(-x_i) = 0) . $ Dobbiamo quindi risolvere il sistema lineare $ cases((N+1) a_0 + (sum_(i=0)^N x_i) a_1 = sum_(i=0)^N y_i, (sum_(i=0)^N x_i) a_0 + (sum_(i=0)^N x_i^2) a_1 = sum_(i=0)^N x_i y_i) . $ Tale sistema è detto *sistema delle equazioni normali*.

== Spline lineare

Dato un insieme di punti $(x_i,y_i) quad i = 0, dots, N$ con $a = x_0 < x_1 < dots < x_n = b$, una *spline lineare interpolante* è una funzione $S^1 (x) : [a,b] arrow.long RR$ tale che:
- $S^1$ è un polinomio di grado 1 su ogni sotto-intervallo $[x_(i-1), x_i] quad i = 1, dots, N$;
- $S^1$ è continua su $[a,b]$;
- $S^1 (x_i) = y_i quad i = 0, dots, N$.

La possiamo vedere come una _funzione a tratti_ formata da $N$ funzioni lineari, ognuna delle quali passa per due punti consecutivi.

=== Errore di interpolazione

Consideriamo una funzione $f : RR arrow.long RR$ e $N+1$ punti $(x_i,y_i) i = 0, dots, N$ con $f(x_i) = y_i$. Sia $S^1 (x)$ la spline lineare che interpola i punti $(x_i,y_i)$. Dato $x in RR$ chiamiamo *errore di interpolazione* nel punto $x$ la quantità $ abs(f(x) - S^1 (x)) . $

#theorem()[
  Sia $f in C^2 ([a,b])$, allora $ max_(x in [a,b]) abs(f(x) - S^1 (x)) lt.eq 1/8 h^2 max_(x in [a,b]) abs(f^((2)) (x)) , $ con $ h = max_(0 lt.eq i lt.eq N-1) (x_(i+1) - x_i) . $
]
