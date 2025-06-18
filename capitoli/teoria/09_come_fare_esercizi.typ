// Setup

#import "../alias.typ": *


// Capitolo

= Come fare gli esercizi proposti nei TDE

Le domande viste per ora nei TDE riguardano un piccolo insieme di argomenti rispetto a quelli totali visti nel corso, quindi scriviamo qua qualche consiglio su come fare questi esercizi.

== Sistemi lineari

Qua abbiamo quattro domande principali:
- *risolvere tramite MEG un sistema lineare*: lo dice già la consegna, applicare il MEG;
- *discutere al variare di un parametro la risolubilità di un sistema*: abbiamo due modi per risolvere questo esercizio:
  - applicare il MEG e quando arriviamo ad avere il parametro in un papabile pivot studiamo quando il pivot è diverso da $0$ e quando è uguale;
  - applicare il teorema di Cramer, calcolando il determinante; questo qua possiamo farlo solo se la matrice è quadrata;
- *calcolare la fattorizzazione LU*: applicare il MEG tenendo traccia dei coefficienti in una seconda matrice (_che è della fattorizzazione_);
- *calcolare alcune iterazioni dei metodi iterativi*: applicare i passi iterativi e trovare le componenti del vettore richiesto.

== Interpolazione polinomiale

Qua abbiamo tre domande principali:
- *calcolare il polinomio interpolatore di un certo grado con il metodo di Lagrange*: calcolare CON MOLTA CALMA i singoli polinomi di Lagrange e poi calcolare il polinomio risultato;
- *calcolare la retta di regressione*: impostare il sistema delle equazioni normali;
- *stimare l'errore di interpolazione di una spline lineare*: usare il teorema che dà un upper bound all'errore di interpolazione.

== Integrazione numerica

Qua abbiamo due domande principali:
- *formula di quadratura di un certo grado di precisione*: verificare per tutti i gradi $t$ da $0$ fino al grado richiesto, che la formula ha grado di precisione $t$;
- *minimo numero di sotto-intervalli affinché si scenda sotto un certo errore*: usare (_di solito_) la formula asintotica IN MODULO per ricavare $M$.

== Zeri di funzione

Qua abbiamo una sola domanda:
- *calcolare gli estremi di Fourier e poi applicare il metodo di Newton*: lo dice la consegna.

== Equazioni differenziali ordinarie

Infine, anche qua abbiamo una sola domanda:
- *calcolare la prima iterazione dei metodi iterativi*: in base al metodo richiesto calcolare FACENDO ATTENZIONE AI CONTI la prima iterazione.
