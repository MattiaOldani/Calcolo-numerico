// Setup

#import "@local/typst-theorems:1.0.0": *
#show: thmrules.with(qed-symbol: $square.filled$)

// Capitolo

= Integrazione numerica

Data la funzione $f : [a,b] arrow.long RR$, vogliamo calcolare l'integrale definito $ I(f) = integral_a^b f(x) dif x . $ In generale non possiamo calcolare $I(f)$ per via analitica (_esempio: funzione gaussiana_), ma possiamo solo approssimarlo numericamente tramite formule di quadratura.

== Formule di quadratura semplici

Si chiama *formula di quadratura* una formula del tipo $ I^tilde (f) = sum_(i=1)^n alpha_i f(x_i) $ che approssima l'integrale $I(f) = integral_a^b f(x) d x$ mediante una combinazione lineare di valori della funzione in opportuni punti $x_i$, detti *nodi di quadratura*, moltiplicati per opportuni coefficienti $alpha_i$, detti *pesi di quadratura*.

Per costruire formule di quadratura possiamo approssimare l'integrale $I(f)$ con l'integrale di un polinomio $P$ che interpola la funzione $f$ in un determinato insieme di nodi nell'intervallo $[a,b]$, cioè $ I(f) approx I^tilde (f) := I(P) = integral_a^b P(x) d x . $ Al variare del numero di nodi di interpolazione e della loro posizione avremo diverse formule di quadratura, dette *di tipo interpolatorio*.

Si chiama *grado di precisione* di una formula di quadratura il massimo intero $r gt.eq 0$ tale che $ I^tilde (P) = I(P) quad forall P in PP_r . $

#lemma()[
  Una formula di quadratura ha grado di precisione $r$ se e solo se $ I^tilde (x^k) = I(x^k) quad forall k = 0, dots, r . $
]

=== Formula del punto medio

La *formula del punto medio* si ottiene scegliendo il polinomio di grado $0$ che interpola $f(x)$ nel punto medio dell'intervallo $[a,b]$, cioè $ I^tilde_(P M) (f) := (b-a) f(frac(a+b,2)) . $

Abbiamo quindi:
- un nodo di quadratura $x_1 = frac(a+b,2)$;
- un peso di quadratura $alpha_1 = b-a$.

In poche parole, stiamo approssimando l'integrale con un rettangolo di base $b-a$ e altezza $f(frac(a+b,2))$.

Si dimostra che l'errore di questa formula è $ I(f) - I^tilde_(P M) (f) = frac((b-a)^3, 24) f^((2)) (t) quad t in (a,b) $ se $f in C^2 ([a,b])$.

Questa formula ha grado di precisione $1$:
- se $k = 0$ allora $f(x) = x^0 = 1$ e quindi $ I(f) = I(1) = integral_a^b 1 d x &= b - a \ I^tilde_(P M) (f) = I^tilde_(P M) (1) = (b - a) underbracket(f(frac(a + b, 2)), "funzione banale") &= b - a ; $
- se $k = 1$ allora $f(x) = x^1 = x$ e quindi $ I(f) = I(x) = integral_a^b x d x &= frac(b^2 - a^2, 2) \ I^tilde_(P M) (f) = I^tilde_(P M) (x) = (b - a) underbracket(f(frac(a + b, 2)), "identità") = (b - a) frac(a + b, 2) &= frac(b^2 - a^2, 2) ; $
- se $k = 2$ allora $f(x) = x^2$ e quindi $ I(f) = I(x^2) = integral_a^b x^2 d x &= frac(b^3 - a^3, 3) \ I^tilde_(P M) (f) = I^tilde_(P M) (x^2) = (b - a) underbracket(f(frac(a + b, 2)), "quadrato") = (b - a) frac((a + b)^2, 4) &= frac(a^2 b + b^3 + 2 a b^2 - a^3 - a b^2 - 2 a^2 b, 4) . $

Vista questa dimostrazione, la formula del punto medio ha grado di precisione $1$.

=== Formula del trapezio

La *formula del trapezio* si ottiene scegliendo il polinomio di grado $1$ che interpola $f(x)$ negli estremi dell'intervallo $[a,b]$, cioè $ I^tilde_T (f) := frac(b-a,2) (f(a) + f(b)) . $

Abbiamo quindi:
- due nodi di quadratura $x_1 = a$ e $x_2 = b$;
- due pesi di quadratura $alpha_1 = alpha_2 = frac(b-a, 2)$.

In poche parole, stiamo approssimando l'integrale con un trapezio di basi $f(a),f(b)$ e altezza $b-a$.

Si dimostra che l'errore di questa formula è $ I(f) - I^tilde_T (f) = -frac((b-a^3), 12) f^((2)) (f) quad t in (a,b) $ se $f in C^2 ([a,b])$.

Non lo dimostriamo, ma la formula del trapezio ha grado di precisione $1$.

=== Formula di Cavalieri-Simpson

La *formula di Cavalieri-Simpson* si ottiene scegliendo il polinomio di grado $2$ che interpola $f(x)$ negli estremi e nel punto medio dell'intervallo $[a,b]$, ovvero $ I^tilde_(C S) (f) := frac(b-a, 6) (f(a) + 4 f(frac(a+b,2)) + f(b)) . $

Abbiamo quindi:
- tre nodi di quadratura $x_1 = a$, $x_2 = frac(a+b,2)$ e $x_3 = b$;
- due pesi di quadratura $alpha_1 = alpha_3 = frac(b-a,6)$ e $alpha_2 = frac(2 (b-a), 3)$.

In poche parole, stiamo approssimando l'integrale con un parabola che passa negli estremi e nel punto medio dell'intervallo $[a,b]$.

Si dimostra che l'errore di questa formula è $ I(f) - I^tilde_(C S) (f) = -frac((b-a)^5, 2880) f^((4)) (t) quad t in (a,b) $ se $f in C^4 ([a,b])$.

Non lo dimostriamo, ma la formula del trapezio ha grado di precisione $3$.

== Formule di quadratura composite

Le *formule di quadratura composite* consistono in:
- introdurre una suddivisione dell'intervallo di integrazione $[a,b]$ in sotto-intervalli;
- utilizzando la proprietà additiva dell'integrale, scrivere quest'ultimo come una somma di integrali definiti su ciascun intervallo della suddivisione;
- approssimare tali integrali definiti mediante formule di quadratura semplici.

Da qui in poi siano:
- $M$ il numero di sotto-intervalli;
- $H = frac(b-a, M)$ ampiezza dei sotto-intervalli;
- $a_i = a + i H quad i = 0, dots, M quad a_0 = a and a_M = b$ estremi dei sotto-intervalli.

=== Formula del punto medio composita

La *formula del punto medio composita* approssima con la formula $ I^tilde(C)_(P M) (f) = sum_(i=1)^M H f(frac(a_(i-1) + a_i, 2)) . $

L'errore nella _formula classica_ è $ I(f) - I^tilde(C)_(P M) (f) = frac(b-a, 24) H^2 f^((2)) (eta) quad eta in (a,b) . $

L'errore nella _formula asintotica_ è $ I(f) - I^tilde(C)_(P M) (f) = H^2 / 24 (f'(b) - f'(a)) quad eta in (a,b) . $

=== Formula del trapezio composita

La *formula del trapezio composita* approssima con la formula $ I^tilde(C)_T (f) = sum_(i=1)^M H/2 (f(a_(i-1)) + f(a_i)) . $

L'errore nella _formula classica_ è $ I(f) - I^tilde(C)_T = -frac(b-a,12) H^2 f^((2)) (eta) quad eta in (a,b) . $

L'errore nella _formula asintotica_ è $ I(f) - I^tilde(C)_T = -H^2 / 12 (f'(b) - f'(a)) quad eta in (a,b) . $

=== Formula di Cavalieri-Simpson composita

La *formula di Cavalieri-Simpson composita* approssima con la formula $ I^tilde(C)_(C S) = sum_(i=1)^M H/6 (f(a_(i-1)) + 4 f(frac(a_(i-1) + a_i, 2)) + f(a_i)) . $

L'errore nella _formula classica_ è $ I(f) - I^tilde(C)_(C S) = - frac(b-a, 2880) H^4 f^((4)) (eta) quad eta in (a,b) . $

L'errore nella _formula asintotica_ è $ I(f) - I^tilde(C)_(C S) = -H^4 / 2880 (f^((3)) (b) - f^((3)) (a)) . $
