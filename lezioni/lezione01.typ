#import "alias.typ": *


= Lezione 01

== Problema matematico, metodo numerico e condizionamento

Un problema matematico in forma astratta è un problema che chiede di trovare $u$ tale che $ P(d,u) = 0, $ con $d$ insieme dei dati, $u$ soluzione e $P$ operatore che esprime la relazione funzionale tra $u$ e $d$. Le due variabili possono essere numeri, vettori, funzioni, eccetera.

Un metodo numerico per la risoluzione approssimata di un problema matematico consiste nel costruire una successioni di problemi approssimati del tipo $ P_n (d_n, u_n) = 0 bar.v n gt.eq 1 $ oppure $ P_h (d_h, u_h) = 0 bar.v h > 0 $ che dipendono dai parametri $n$ o $h$.

Un metodo numerico è convergente se $ lim_(n arrow infinity) u_n = u $ oppure $ lim_(h arrow 0) u_h = u . $

Il problema matematico $P(d,u) = 0$ è ben posto (o stabile) se, per un certo dato $d$, la soluzione $u$ esiste ed è unica e dipende con continuità dai dati. Questa ultima proprietà indica che piccole perturbazioni (variazioni) dei dati $d$ producono piccole perturbazioni nella soluzione $u$.

Per quantificare la dipendenza continua dai dati introduciamo il concetto di numero di condizionamento di un problema.

Consideriamo una funzione $f : [a,b] arrow.long RR$ in un punto $x_0$, ovvero $ d := x_0 quad u := f(x_0) bar.v d,u in RR . $

Applichiamo lo sviluppo di Taylor di $f$ in $x_0$, ovvero $ f(x) = f(x_0) + f'(x_0)(x - x_0) + dots $ Ma allora $ f(x) - f(x_0) approx f'(x_0)(x - x_0) \ frac(f(x) - f(x_0), f(x_0)) approx frac(x_0 f'(x_0), f(x_0)) frac(x - x_0, x_0) \ abs(frac(f(x) - f(x_0), f(x_0))) approx abs(frac(x_0 f'(x_0), f(x_0))) abs(frac(x - x_0, x_0)) $ Osserviamo che $ Delta f(x_0) := frac(f(x) - f(x_0), f(x_0)) $ e $ Delta x_0 := frac(x - x_0, x_0) $ sono le variazioni relative della soluzione $u := f(x_0)$ e del dato $d := x_0$.

Chiamiamo *numero di condizionamento del calcolo di una funzione f in x_0* la quantità $ K_f (x_0) := abs(frac(x_0 f'(x_0), f(x_0))) . $

Poiché vale $ abs(Delta f(x_0)) approx K_f (x_0) abs(Delta x_0) $ diciamo che $K_f (x_0)$ esprime il rapporto tra la variazione relativa subita dalla soluzione e la variazione relativa introdotta nel dato.

Calcolare i numeri di condizionamento nei casi:
- $f(x) = 6$ e $x_0 = 4$;
- $f(x) = e^x$ e $x_0 = 4$;
- $f(x) = 6x - x^3$ e $x_0 = 4$.

Nell'approssimare numericamente un problema fisico si commettono errori di quattro tipi diversi:
+ errori sui dati, riducibili aumentando l'accuratezza nelle misurazioni dei dati;
+ errori dovuti al modello, controllabili nella fase modellistica matematica, quando si passa dal fisico al matematico;
+ errori di troncamento, dovuti al fatto che quando si passa al limite nel calcolatore questi passaggi vengono approssimati, essendo operazioni eseguite nel discreto;
+ errori di arrotondamento, dovuti alla rappresentazione finita dei calcolatori.

L'analisi numerica studia e controlla gli errori 3 e 4.

== Aritmetica floating point

L'insieme dei numeri macchina è l'insieme $ cal(F)(beta, t, L, U) = {sigma(.a_1 a_2 dots a_t)_beta beta^e } union {0} $ e con il simbolo $ float(x) in cal(F)(beta, t, L, U) $ il generico elemento dell'insieme, cioè il generico numero macchina.

Abbiamo:
- $sigma$ segno di $float(b)$;
- $beta$ base della rappresentazione;
- $e$ esponente con $L lt.eq e lt.eq U$ con $L > 0$ e $U > 0$;
- $t$ numero di cifre significative;
- $a_1 eq.not 0$ e $0 lt.eq a_i lt.eq beta - 1$;
- $m = (.a_1 a_2 dots a_t)_beta = a_1 / beta + a_2 / beta^2 + dots + a^t / beta^t$ mantissa.

Facciamo un po' di osservazioni:
- $abs(float(x)) in [beta^(L-1), (1-beta^(-t))beta^U]$;
- in `MATLAB` si ha $beta=2$, $t=53$, $L=-1021$ e $U=1024$;
- il risultato di un'operazione fra numeri macchina non è necessariamente un numero macchina.

Preso il numero reale $ x = sigma (.a_1 a_2 dots a_t a_(t+1) a_(t+2))_beta beta^e in RR . $

Distinguiamo i seguenti casi:
- $L lt.eq e lt.eq U, a_i = 0 forall i > t$ allora si ha la rappresentazione esatta di $x$, ovvero $float(x) = x$;
- $e < L$ allora si ha underflow, ovvero $float(x) = 0$;
- $e > U$ allora si ha overflow, ovvero $float(x) = infinity$
- se $exists i > t bar.v a_i eq.not 0$ allora:
  - troncamento: $ float(x) = sigma (.a_1 a_2 dots a_t)_beta beta^e ; $
  - arrotondamento: $ sigma cases((.a_1 a_2 dots a_t)_beta beta^e "se" 0 lt.eq a_(t+1) < beta/2, (.a_1 a_2 dots a_t + 1)_beta beta^e "se" beta/2 gt.eq a_(t+1) lt.eq beta - 1) . $

Si può dimostrare che l'errore commesso approssimando un numero reale $x$ con la sua rappresentazione macchina $float(x)$ è maggiorato da $ abs(frac(float(x) - x, x)) lt.eq k beta^(1-t) $ con $k=1$ per troncamento e $k=1/2$ per arrotondamento.

La quantità $ eps = k beta^(1-t) $ è detta precisione macchina nel fissato sistema floating point. La precisione si può caratterizzare come il più piccolo numero macchina per cui vale $ float(1 + eps) > 1 . $

Esercizio: costruire $cal(F)(beta, t, L, U)$ con $beta=2, t=3, L=-1, U=2$.
