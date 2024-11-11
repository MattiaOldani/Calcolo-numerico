// Setup

// Capitoli

= Zeri di funzione

Possiamo trovare gli zeri di una funzione data usando la funzione *`fzero(f,[a,b])`*.

*ATTENZIONE*: devono valere le ipotesi del *teorema degli zeri*, ovvero:
- la funzione nei due estremi deve essere di segno discorde;
- la funzione è continua.

Se cade la prima ipotesi la funzione solleva un errore. Inoltre, i punti in cui la funzione tocca l'asse delle $x$ non sono considerati zeri perché non hanno segno discorde.

Se cade la seconda ipotesi, potrebbero essere riportati punti di discontinuità.

== Metodo di bisezione

Il *metodo di bisezione* è un ottimo metodo per trovare gli zeri di una funzione, avendo attenzione a chiamare la funzione su intervalli che soddisfino le ipotesi del teorema degli zeri. Questo metodo converge sempre e l'errore ogni volta è minore della metà dell'intervallo corrente.

== Metodo di Newton

Il *metodo di Newton* è un altro ottimo metodo, ma necessita della derivata della funzione data e soprattutto:
- rischia una divisione per zero;
- rischia una non convergenza.
