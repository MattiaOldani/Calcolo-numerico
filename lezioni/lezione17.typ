= Lezione 17

== Metodi numerici per equazioni differenziali ordinarie

Consideriamo il problema di Cauchy $ cases(frac(d y(t), d t) = f(t, y(t)) quad t in (t_0, T), y(t_0) = y_0) . $

Supponiamo che $f = f(t,y) : (t_0) times RR arrow.long RR$ sia Lipschitziana rispetto a $y$ e uniformemente rispetto a $t$, cioè $ exists L > 0 bar.v abs(f(t,y_1) - f(t,y_2)) lt.eq L abs(y_1 - y_2) quad forall t in (t_0,T) quad forall y_1,y_2 in RR . $

Con queste ipotesi Cauchy ammette una e una sola soluzione.

Abbiamo $N+1$ nodi di discretizzazione in $[t_0,T]$, ovvero $ h > 0 quad t_j = t_0 + j h quad j = 0, dots, N quad t_N lt.eq T . $ Denotiamo con $y_j$ la soluzione esatta $y(dot)$ valutata in $t_j$, ovvero $y_j := y(t_j) quad j = 0, dots, N$.

Un metodo numerico per l'approssimazione del problema di Cauchy è un algoritmo che costruisce $N+1$ valori reali $u_j$ che approssimano $y_j quad forall j = 0, dots, N$ i.e. $u_j approx y_j$.

Un metodo numerico per l'approssimazione di Cauchy è detto metodo ad un passo se $forall n gt.eq 0$ allora $u_(n+1)$ dipende solo da $u_n$ e non da $u_j$, per $j < n$. Altrimenti è detto multistep.

Un metodo numerico per l'approssimazione di Cauchy è detto esplicito se $forall n gt.eq 0$ allora $u_(n+1)$ si calcola come funzione dei passi precedenti $u_j$ per $j lt.eq n$, altrimenti è detto implicito se $forall n gt.eq 0$ allora $u_(n+1)$ dipende implicitamente da se stesso attraverso la funzione $f$.

Eulero esplicito: posto $u_0 = y_0 quad forall n gt.eq 0$ faccio $ u_(n+1) = u_n + h f(t_n, u_n) . $

Eulero implicito: posto $u_0 = y_0 quad forall n gt.eq 0$ faccio $ u_(n+1) = u_n + h t(t_(n+1), u_(n+1)) $

In questo caso, ad ogni passo dobbiamo risolvere un'equazione non lineare, ad esempio tramite Newton.

Metodo di Crank-Nicolson: posto $u_0 = y_0 quad forall n gt.eq 0$ faccio $ u_(n+1) = u_n + h/2 (f(t_n,u_n) + f(t_(n+1), u_(n+1))) . $

Metodo di Heun: posto $u_0 = y_0 quad forall n gt.eq 0$ faccio $ u^*_(n+1) = u_n + h f(t_n, u_n) \ u_(n+1) = u_n + h/2 (f(t_n, u_n) + f(t_(n+1), u^*_(n+1))) . $

La forma generale di un metodo esplicito ad un passo è $ u_(n+1) = u_n + h phi.alt(t_n, u_n, f(t_n,u_n), h) , $ dove $phi.alt$ è detta funzione incrementale.

Sia $y(dot)$ la soluzione esatta di Cauchy, poniamo $ epsilon_(n+1) = y_(n+1) - y_n - h phi.alt(t_n, y_n, f(t_n,y_n), h) quad 0 lt.eq n lt.eq N-1 . $

$epsilon_(n+1)$ è l'errore che si commette pretendendo che la soluzione esatta soddisfi lo schema numerico.

Si chiama errore di troncamento locale la quantità $ tau_(n+1) (h) = frac(epsilon_(n+1), h) . $

Si chiama errore di troncamento globale la quantità $ tau(h) = max_(0 lt.eq n lt.eq N-1) tau_(n+1) (h) . $

Un metodo numerico è consistente se $ lim_(h arrow 0) tau(h) = 0 . $

Un metodo numerico è consistente di ordine $p$ se $ tau(h) = O(h^p) . $

Un metodo numerico è detto zero-stabile se, in un dato intervallo limitato $(t_0, T)$, piccole perturbazioni sui dati producono piccole perturbazioni sulla soluzione approssimata per $h arrow 0$.

Un metodo numerico è detto convergente di ordine $p$ se $ exists C > 0 bar.v abs(u_n - y_n) lt.eq C h^p quad forall n bar.v 0 lt.eq n lt.eq N . $

Teorema: un metodo numerico è convergente se e solo se è consistente e zero-stabile.

Consideriamo ora il problema modello $ cases(frac(d y(t), d t) = - lambda y(t) quad t in (0, infinity) quad lambda > 0, y(0) = 1) $ la cui soluzione esatta è $y(t) = e^(-lambda t)$.

Un metodo numerico è detto assolutamente stabile se, applicato al problema modello, allora $ u_n arrow 0 quad t_n arrow infinity . $

Come sono i nostri metodi:
- Eulero esplicito se e solo se $h < 2/lambda$;
- Eulero implicito lo è incondizionatamente;
- Heun se e solo se $h < 2/lambda$;
- Crank-Nicolson lo è incondizionatamente.
