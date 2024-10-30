= Laboratorio 01

== Introduzione

Ogni variabile in Matlab è una matrice, anche gli scalari. L'assegnamento è quello classico di ogni linguaggio di programmazione, ormai mi sto annoiando. Ogni volta che si fa un assegnamento l'espressione viene valutata, il risultato viene salvato nella variabile e viene mostrato nel prompt il risultato. Per evitare la stampa della valutazione si usa il simbolo ";" alla fine dell'espressione.

#align(center)[
  ```matlab
  a = 6       % Viene mostrato nel prompt
  b = 2.5;    % Non viene mostrato nel prompt
  ```
]

Se un'espressione viene valutata ma non viene assegnata a nessuna variabile, il risultato viene salvato nella variabile "ans", che conterrà ogni volta l'ultima espressione valutata non salvata.

#align(center)[
  ```matlab
  6 + 2;
  ans       % Viene mostrato 8 nel prompt
  ```
]

Con il comando "who" vengono mostrate le variabili in memoria, mentre con il comando "whos" vengono stampate informazioni aggiuntive, ad esempio tipo e dimensione delle variabili.

#align(center)[
  ```matlab
  a = 6;
  6 + 2;

  who         % Vengono mostrate le variabili "a" e "ans"
  whos        % Idem ma con informazioni aggiuntive
  ```
]

Con il comando "clear all" vengono cancellate tutte le variabili in memoria, mentre con il comando "clear x" viene cancellata la variabile "x" dalla memoria.

#align(center)[
  ```matlab
  a = 6;
  b = 10;
  6 + 2;

  clear a;
  who             % Vengono mostrate le variabili "b" e "ans"

  clear all;
  who             % Non viene mostrato niente
  ```
]

Ci sono alcune varibili predefinite:
- pigreco: variabile "pi";
- unità immaginaria: variabili "i" e "j".

Non è presente il numero di Nepero, ma che possiamo calcolare facilmente con la funzione ```matlab exp(1)```.

Le variabili predefinite possono essere sovrascritte. Per tornare ai valori originali si usa il comando "clear" visto in precedenza.

Come in ogni linguaggio di programmazione, ci sono delle operazioni fondamentali come somma, differenza, prodotto, divisione e potenza.

#align(center)[
  ```matlab
  a = 3;
  b = 4;

  a + b, a - b, a * b, a / b, a ^ b
  ```
]

Sono presenti anche i numeri complessi. Se la variabile "i" non è stata ridefinita possiamo definire un numero complesso tramite la sua parte reale e la sua parte immaginaria, anche senza l'operatore "\*" se la parte immaginaria è un numero.

Sui numeri complessi abbiamo una serie di funzioni utili, come "real" (_restituisce la parte reale_), "imag" (_restituisce la parte immaginaria_), "conj" (_restituisce il coniugato del numero complesso_) e "abs" (_restituisce il modulo del numero complesso_).

#align(center)[
  ```matlab
  a = 5;

  z1 = 2 + 2i;
  z2 = a + a * i;

  real(z1)            % viene mostrato 2
  imag(z1)            % viene mostrato 2
  conj(z1)            % viene mostrato 2 - 2i
  abs(z1)             % viene mostrato sqrt(8)
  ```
]

Prima abbiamo visto "atan", ma non è l'unica funzione presente in Matlab: per vedere la lista completa usare il comando "help elfun".

I numeri in virgola mobile hanno una precisione enorme: dentro "realmax" e "realmin" abbiamo rispettivamente il valore massimo e il valore minimo _positivo_. Se andiamo oltre "realmax" viene restituito "Inf", che però è anche il risultato di una divisione per $0$.

Il numero di cifre signficiative di un numero può essere cambiato:
- "format short": $5$ cifre significative;
- "format long": $15$ cifre significative;
- "format short e": $5$ cifre significative in notazione esponenziale;
- "format long e": $15$ cifre significative in notazione esponenziale;

Purtroppo, in matlab non vale in generale la proprietà associativa della somma e la proprietà distributiva del prodotto rispetto alla somma.

La cancellazione numerica è la perdita di cifre significative quando si sottraggono numeri che sono quasi uguali. Questo è dato dal numero di cifre significative che vengono utilizzate.
