// Setup

#import "@local/typst-theorems:1.0.0": *
#show: thmrules.with(qed-symbol: $square.filled$)

// Capitolo

= Metodi numerici per equazioni differenziali ordinarie

Consideriamo il problema di Cauchy $ cases(frac(d y(t), d t) = f(t, y(t)) quad t in (t_0, T), y(t_0) = y_0) . $

Supponiamo che $f = f(t,y) : (t_0) times RR arrow.long RR$ sia *Lipschitziana* rispetto a $y$ e *uniformemente Lipschitziana* rispetto a $t$, cioè $ exists L > 0 bar.v abs(f(t,y_1) - f(t,y_2)) lt.eq L abs(y_1 - y_2) quad forall t in (t_0,T) quad forall y_1,y_2 in RR . $

Sotto queste ipotesi, il problema di Cauchy ammette una e una sola soluzione.

Introduciamo $N+1$ *nodi di discretizzazione* in $[t_0,T]$, ovvero $ h > 0 quad t_j = t_0 + j h quad j = 0, dots, N quad t_N lt.eq T . $

Denotiamo con $y_j$ la soluzione esatta $y(dot)$ valutata in $t_j$, ovvero $y_j = y(t_j) quad j = 0, dots, N$.

Un metodo numerico per l'approssimazione del problema di Cauchy è un algoritmo che costruisce $N+1$ valori reali $u_j$ che approssimano $y_j quad forall j = 0, dots, N$, ovvero $u_j approx y_j$.

Un metodo numerico per l'approssimazione di Cauchy è detto *metodo ad un passo* se $forall n gt.eq 0$ allora $u_(n+1)$ dipende solo da $u_n$ e non da $u_j$, per $j < n$. In caso contrario il metodo è detto *multistep*.

Un metodo numerico per l'approssimazione di Cauchy è detto *esplicito* se $forall n gt.eq 0 space u_(n+1)$ si calcola come funzione dei passi precedenti $u_j$ per $j lt.eq n$. In caso contrario il metodo è detto *implicito*, ovvero se $forall n gt.eq 0 space u_(n+1)$ dipende implicitamente da se stesso attraverso la funzione $f$.

== Metodo di Eulero

Abbiamo due versioni per il *metodo di Eulero*:
- *esplicito*: posto $u_0 = y_0$ allora $ forall n gt.eq 0 quad u_(n+1) = u_n + h f(t_n, u_n) ; $
- *implicito*: posto $u_0 = y_0$ allora $ forall n gt.eq 0 quad u_(n+1) = u_n + h f(t_(n+1), u_(n+1)) . $

Nel caso di Eulero implicito ad ogni passo dobbiamo risolvere un'equazione non lineare, ad esempio tramite il metodo di Newton.

== Metodo di Crank-Nicolson

Il *metodo di Crank-Nicolson* ha una sola versione: posto $u_0 = y_0$ allora $ forall n gt.eq 0 quad u_(n+1) = u_n + h/2 (f(t_n,u_n) + f(t_(n+1), u_(n+1))) . $

== Metodo di Heun

Il *metodo di Heun* ha una sola versione: posto $u_0 = y_0$ allora $forall n gt.eq 0$ calcolo $ u^*_(n+1) &= u_n + h f(t_n, u_n) \ u_(n+1) &= u_n + h/2 (f(t_n, u_n) + f(t_(n+1), u^*_(n+1))) . $

== Consistenza, convergenza e stabilità

La forma generale di un metodo esplicito ad un passo è $ u_(n+1) = u_n + h phi.alt(t_n, u_n, f(t_n,u_n), h) , $ dove $phi.alt$ è detta *funzione incrementale*.

Sia $y(dot)$ la soluzione esatta di Cauchy. Poniamo $ epsilon_(n+1) = y_(n+1) - y_n - h phi.alt(t_n, y_n, f(t_n,y_n), h) quad 0 lt.eq n lt.eq N-1 . $

La quantità $epsilon_(n+1)$ è l'errore che si commette pretendendo che la soluzione esatta soddisfi lo schema numerico.

Si chiama *errore di troncamento locale* la quantità $ tau_(n+1) (h) = frac(epsilon_(n+1), h) . $

Si chiama *errore di troncamento globale* la quantità $ tau(h) = max_(0 lt.eq n lt.eq N-1) tau_(n+1) (h) . $

Un metodo numerico è *consistente* se $ lim_(h arrow 0) tau(h) = 0 . $

Un metodo numerico è *consistente di ordine* $p$ se $ tau(h) = O(h^p) . $

Un metodo numerico è detto *zero-stabile* se, in un dato intervallo limitato $(t_0, T)$, piccole perturbazioni sui dati producono piccole perturbazioni sulla soluzione approssimata, per $h arrow 0$.

Un metodo numerico è detto *convergente di ordine* $p$ se $ exists C > 0 bar.v abs(u_n - y_n) lt.eq C h^p quad 0 lt.eq n lt.eq N . $

#theorem()[
  Un metodo numerico è convergente se e solo se è consistente e zero-stabile.
]

Consideriamo ora il problema modello $ cases(frac(d y(t), d t) = - lambda y(t) quad t in (0, infinity) quad lambda > 0, y(0) = 1) $ la cui soluzione esatta è $y(t) = e^(-lambda t)$.

Un metodo numerico è detto *assolutamente stabile* se, applicato al problema modello, allora $ u_n arrow 0 quad "se" t_n arrow infinity . $

Vediamo che proprietà hanno i metodi che abbiamo visto:
- Eulero esplicito è assolutamente stabile se e solo se $h < 2/lambda$;
- Eulero implicito è incondizionatamente assolutamente stabile;
- Heun è assolutamente stabile se e solo se $h < 2/lambda$;
- Crank-Nicolson è incondizionatamente assolutamente stabile.
