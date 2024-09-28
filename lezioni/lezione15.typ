#import "alias.typ": *


= Lezione 15

== Zeri di funzione

Data una funzione $f : [a,b] arrow.long RR$ continua e tale che $f(a) f(b) < 0$ trovare $alpha in (a,b)$ tale che $f(alpha) = 0$.

In generale $alpha$ non riusciamo a calcolarlo per via analitica (a.e. eq non lineari), ma possiamo solo approssimarlo numericamente.

Teorema: sia $f : [a,b] arrow.long RR$ continua in $[a,b]$ e $f(a) f(b) < 0$ allora esiste $alpha in (a,b)$ tale che $f(alpha) = 0$.

I metodi numerici per la ricerca degli zeri sono in generale iterativi, quindi costruiremo una serie di valori $x_k$ con la speranza che $ lim_(k arrow infinity) x_k = alpha . $

Nella pratica ci fermeremo ad un passo $k^\^$ tale che $x_(k^\^)$ sia vicino ad $alpha$.

Il *metodo di bisezione* parte con $a_0 = a$ e $b_0 = b$. Calcolo $x_1 = frac(a_0 + b_0, 2)$ con $abs(x_1 - alpha) < frac(b-a, 2)$. Se consideriamo la parte di intervallo e vale ancora il prodotto negativo allora restringo a questa parte la ricerca e ricomincio, altrimenti restringo sulla seconda parte di segmento. Al passo $n$-esimo ho $ abs(x_n - alpha) < frac(b-a, 2^n) . $

Vantaggi:
- robusto;
- converge sempre.

Svantaggi:
- convergenza lenta;
- buona approssimazione la si raggiunge lentamente.

Il *metodo di newton* parte da un $x_0$, calcola la retta tangente in $x_0$ e cerca di annullare questa funzione. Il nuovo punto sarà il punto di partenza per la nuova iterazione.

In generale, sia $f : [a,b] arrow.long RR$ derivabile tale che $f(a) f(b) < 0$ e $f'(x) eq.not quad forall x in [a,b]$. Sia $x_0 in [a,b]$, allora per $k = 0, 1, 2, dots$ poniamo $x_(k+1) = x_k - frac(f(x_k), f'(x_k))$.

Vantaggi:
- la convergenza è quadratica (veloce), infatti $ abs(x_(k+1) - alpha) approx abs(x_k - alpha)^2 . $

Svantaggi:
- la convergenza dipende dalla scelta di $x_0$, se non è sufficientemente vicino ad $alpha$ il metodo può non convergere.

Teorema: supponiamo
- $f in C^2 ([a,b])$ (regolarità);
- $f'(x) eq.not 0 quad forall x in [a,b]$ (monotonia);
- $f''(x) eq.not 0 quad forall x in [a,b]$ (non cambia convessità).

Chiamiamo estremo di Fourier $x_0$ l'unico punto tra $a$ e $b$ tale che $ f(x_0) f''(x_0) > 0 . $

Allora il metodo di newton, innescato con dato iniziale $x_0$ estremo di Fourier, è convergente con convergenza quadratica.

Come test d'arresto abbiamo due possibilità:
- test del residuo: fissata una tolleranza $toll << 1$ arrestiamo il metodo iterativo se $ frac(abs(f(x_k)), abs(f(x_0))) < toll ; $
- test dell'incremento: fissata una tolleranza $toll << 1$ arrestiamo il metodi iterativo se $ frac(abs(x_(k+1) - x_k), abs(x_k)) < toll . $
