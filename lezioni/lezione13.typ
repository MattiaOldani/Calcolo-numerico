= Lezione 13

== Integrazione numerica

Vogliamo calcolare l'integrale definito $ I(f) = integral_a^b f(x) d x $ data la funzione $f : [a,b] arrow.long RR$. In generale non possiamo calcolare $I(f)$ per via analitica, ma possiamo solo approssimarla numericamente tramite formule di quadratura.

// Da mettere sopra
Si chiama formula di quadratura una formula del tipo $ I^tilde(f) = sum_(i=1)^n a_i f(x_i) $ che approssima l'integrale $I(f) = integral_a^b f(x) d x$ mediante una combinazione lineare di valori della funzione in opportuni punti ($x_i$ nodi di quadratura) moltiplicati per opportuni coefficienti ($alpha_i$ pesi di quadratura).

Per costruire formule di quadratura approssimiamo con l'integrale di un polinomio $P(x)$ che interpola la funzione $f(x)$ in un determinato insieme di nodi nell'intervallo $[a,b]$, cioè $ I(f) approx I^tilde (f) := I(P) = integral_a^b P(x) d x . $ Al variare del numero di nodi di interpolazione e della loro posizione avremo diverse formule di quadratura, dette di tipo interpolatorio.

La formula del punto medio si ottiene scegliendo il polinomio di grado $0$ che interpola $f(x)$ nel punto medio dell'intervallo $[a,b]$, cioè $ I^tilde_(P M) (f) := (b-a) f(frac(a+b,2)) . $ Il nodo di quadratura è $frac(a+b,2)$ mentre il peso di quadratura è $a_1 = b-a$. Si dimostra che l'errore di questa formula è $ I(f) - I^tilde_(P M) (f) = frac((b-a)^3, 24) f^((2)) (t) quad t in (a,b) $ se $f in C^2 ([a,b])$.

La formula del trapezio si ottiene scegliendo il polinomio di grado $1$ che interpola $f(x)$ negli estremi dell'intervallo $[a,b]$, ovvero $ I^tilde_T (f) := frac(b-a,2) (f(a) + f(b)) . $ Abbiamo quindi due nodi di quadratura $x_1 = a, x_2 = b$ e due pesi di quadratura $alpha_1 = alpha_2 = frac(b-a, 2)$. L'errore con questa formula di quadratura è $ I(f) - I^tilde_T (f) = - frac((b-a^3), 12) f^((2)) (f) quad t in (a,b) $ se $f in C^2 ([a,b])$.

La formula di Cavalieri-Simpson si ottiene scegliendo il polinomio di grado $2$ che interpola $f(x)$ negli estremi e nel punto medio dell'intervallo $[a,b]$, ovvero $ I^tilde_(C S) (f) := frac(b-a, 6) (f(a) + 4f(frac(a+b,2)) + f(b)) . $ Abbiamo quindi tre nodi di quadratura $x_1 = a, x_2 = frac(a+b,2), x_3 = b$ e due pesi di quadratura $alpha_1 = alpha_3 = frac(b-a,6), alpha_2 = frac(2 (b-a), 3)$. L'errore con questa formula di quadratura è $ I(f) - I^tilde_(C S) (f) = - frac((b-a)^5, 2880) f^((4)) (t) quad t in (a,b) $ se $f in C^4 ([a,b])$.

Si chiama grado di precisione di una formula di quadratura il massimo intero $r gt.eq 0$ tale che $I^tilde (P) = I(P) quad forall P in PP_r$.

Proposizione: una formula di quadratura ha grado di precisione $r$ se e solo se $ I^tilde (x^k) = I(x^k) quad forall k = 0, dots, r . $

Per il punto medio, proviamo $k=0$ quindi $f(x) = x^0 = 1$ e quindi $ I(f) = I(1) = integral_a^b 1 d x = [x]_a^b = b - a \ I^tilde_(P M) (f) = I^tilde_(P M) (1) = (b-a) dot 1 = b - a $ quindi $ I(1) = I^tilde_(P M) (1) . $

Proviamo $k=1$ quindi $f(x) = x$ e quindi $ I(f) = I(x) = integral_a^b x d x = [x^2 / 2]_a^b = frac(b^2 - a^2, 2) \ I^tilde_(P M) (f) = I^tilde_(P M) (x) = (b - a) frac(a + b, 2) = frac(b^2 - a^2, 2) $ quindi $ I(x) = I^tilde_(P M) (x) . $

Se provassimo con $k=2$ avremmo due risultati diversi, quindi PM ha grado di precisione $1$.

Il trapezio ha grado di precisione $1$, Cavalieri-Simpson ha grado di precisione $3$.

Le formule di quadratura composite consistono in:
- introdurre una suddivisione dell'intervallo di integrazione $[a,b]$ in sotto-intervalli;
- utilizzando la proprietà additiva dell'integrale, scriverlo come una somma di integrali definiti su ciascun intervallo della suddivisione;
- approssimare tali integrali definiti mediante formule di quadratura semplici.

Sia $M$ il numero di sotto-intervalli, $H = frac(b-a, M)$ ampiezza dei sotto-intervalli e $a_i = a + i H quad i = 0, dots, M quad a_0 = a and a_M = b$ estremi dei sotto-intervalli.

La formula el punto medio composita approssima con $ I^tilde(C)_(P M) (f) = sum_(i=1)^M H f(frac(a_(i-1) + a_i, 2)) . $

L'errore nella formula classica è $ I(f) - I^tilde(C)_(P M) (f) = frac(b-a, 24) H^2 f^((2)) (eta) quad eta in (a,b) . $

L'errore nella formula asintotica è $ I(f) - I^tilde(C)_(P M) (f) = H^2 / 24 (f'(b) - f'(a)) . $

La formula del trapezio composita approssima con $ I^tilde(C)_T (f) = sum_(i=1)^M H/2 (f(a_(i-1)) + f(a_i)) . $

L'errore nella formula classica è $ I(f) - I^tilde(C)_T = -frac(b-a,12) H^2 f^((2)) (eta) quad eta in (a,b) . $

L'errore nella formula asintotica è $ I(f) - I^tilde(C)_T = -H^2 / 12 (f'(b) - f'(a)) . $

La formula di Cavalieri-Simpson composita approssima con $ I^tilde(C)_(C S) = sum_(i=1)^M H/6 (f(a_(i-1)) + 4f(frac(a_(i-1) + a_i, 2)) + f(a_i)) . $

L'errore nella formula classica è $ I(f) - I^tilde(C)_(C S) = - frac(b-a, 2880) H^4 f^((4)) (eta) quad eta in (a,b) . $

L'errore nella formula asintotica è $ I(f) - I^tilde(C)_(C S) = -H^4 / 2880 (f^((3)) (b) - f^((3)) (a)) . $
