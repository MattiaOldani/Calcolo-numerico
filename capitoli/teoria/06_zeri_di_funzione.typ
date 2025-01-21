// Setup

#import "../alias.typ": *

#import "@local/typst-theorems:1.0.0": *
#show: thmrules.with(qed-symbol: $square.filled$)

// Capitolo

= Zeri di funzione

Data una funzione $f : [a,b] arrow.long RR$ continua e tale che $f(a) f(b) < 0$, vogliamo trovare $alpha in (a,b)$ tale che $f(alpha) = 0$. In generale il valore $alpha$ non riusciamo a calcolarlo per via analitica (_esempio: equazioni non lineari_), ma possiamo solo approssimarlo numericamente.

== Teorema degli zeri

#theorem([Teorema degli zeri])[
  Sia $f : [a,b] arrow.long RR$ continua in $[a,b]$ e tale che $ f(a) f(b) < 0 . $ Allora esiste $alpha in (a,b)$ tale che $ f(alpha) = 0 . $
]

I metodi numerici per la ricerca degli zeri sono in generale iterativi, quindi costruiremo una serie di valori $x_k$ con la speranza che $ lim_(k arrow infinity) x_k = alpha . $

Nella pratica ci fermeremo ad un passo $k^\^$ tale che $x_(k^\^)$ sia vicino ad $alpha$.

== Metodo di bisezione

Il *metodo di bisezione* segue i seguenti passi:
+ siano $a_0 = a$ e $b_0 = b$;
+ per ogni $k gt.eq 1$ eseguo:
  + calcolo $x_k = frac(a_(k - 1) + b_(k - 1), 2)$
  + controllo $f(a) f(x_k)$:
    - se il risultato è negativo restringo l'estremo destro a $b = x_k$;
    - se il risultato è positivo restringo l'estremo sinistro ad $a = x_k$;
  + ricomincio dal punto $2.1$.

Al $k$-esimo passo l'errore commesso è $ abs(x_k - alpha) < frac(b-a, 2^k) . $

#table(
  columns: (50%, 50%),
  align: center + horizon,
  [*Vantaggi*], [*Svantaggi*],
  [Converge sempre], [Convergenza lenta],
  [Robusto], [Una buona approssimazione la si raggiunge lentamente],
)

== Metodo di Newton

Il *metodo di Newton* segue i seguenti passi:
+ sia $x_0$ un punto;
+ per ogni $k gt.eq 1$ eseguo:
  + calcolo la retta tangente in $x_(k-1)$;
  + cerco lo zero di questa retta tangente;
  + sia $x_k$ lo zero appena trovato;
  + ricomincio dal punto $2.1$.

Questo è l'algoritmo _"formale"_ per il metodo di Newton. Vediamo quello più _"applicato"_:
+ sia $x_0$ un punto;
+ per ogni $k gt.eq 1$ eseguo:
  + calcolo $x_k = x_(k-1) - frac(f(x_0), f'(x_0))$
  + ricomincio dal punto $2.1$.

Sia $r_(k-1)(x)$ la retta tangente in $x_(k-1)$. La sua definizione analitica è la seguente: $ r_(k-1)(x) = f'(x_(k-1)) (x - x_(k-1)) + f(x_(k-1)) . $

Vogliamo lo zero di questa retta, ovvero vogliamo trovare $x$ tale che $ f'(x_(k-1)) (x - x_(k - 1)) + f(x_(k - 1)) = 0 . $

Ma allora $ x f'(x_(k - 1)) - x_(k - 1) f'(x_(k - 1)) = -f(x_(k - 1)) \ x f'(x_(k - 1)) = x_(k - 1) f'(x_(k - 1)) - f(x_(k - 1)) \ x = x_(k - 1) - frac(f(x_(k - 1)), f'(x_(k - 1))) . $ Il valore di $x$ appena trovato lo chiamiamo $x_k$.

#table(
  columns: (50%, 50%),
  align: center + horizon,
  [*Vantaggi*], [*Svantaggi*],
  [La convergenza è quadratica (_veloce_): $ abs(x_(k+1) - alpha) approx abs(x_k - alpha)^2 $],
  [La convergenza dipende dalla scelta di $x_0$: se esso non è sufficientemente vicino ad $alpha$ il metodo può non convergere],
)

#theorem()[
  Supponiamo
  - $f in C^2 ([a,b])$ (_regolarità_);
  - $f'(x) eq.not 0 quad forall x in [a,b]$ (_monotonia stretta_);
  - $f''(x) eq.not 0 quad forall x in [a,b]$ (_non cambia convessità_).

  Chiamiamo *estremo di Fourier* $x_0$ l'unico punto tra $a$ e $b$ tale che $ f(x_0) f''(x_0) > 0 . $

  Allora il metodo di Newton, innescato con dato iniziale $x_0$ estremo di Fourier, è convergente con convergenza quadratica.
]

Come *test d'arresto* abbiamo due possibilità:
- *test del residuo*: fissata una tolleranza $toll << 1$, arrestiamo il metodo iterativo se $ frac(abs(f(x_k)), abs(f(x_0))) < toll ; $
- *test dell'incremento*: fissata una tolleranza $toll << 1$ arrestiamo il metodi iterativo se $ frac(abs(x_(k+1) - x_k), abs(x_k)) < toll . $
