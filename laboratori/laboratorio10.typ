= Laboratorio 10

Possiamo trovare gli zeri di una funzione usando la funzione "fzero(f, [a,b])". *ATTENZIONE*: deve valere l'ipotesi del teorema degli zeri, quindi la funzione nei due estremi deve essere di segno discorde. Inoltre, i punti in cui la funzione tocca l'asse delle $x$ non sono considerati zeri perché non hanno segno discorde ($f(x) = x^2$). Inoltre, se la funzione non è continua potrebbero essere riportati punti di discontinuità. In questi ultimi due casi cade una delle ipotesi del teorema degli zeri.

Il *metodo di bisezione* è un altro modo utile per trovare gli zeri, restringendo sempre di più l'intervallo applicando il teorema degli zeri. Questo metodo converge sempre e l'errore ogni volta è meno della metà dell'intervallo corrente.

Il *metodo di Newton* invece necessita delle derivata della funzione, e soprattutto si rischia una divisione per zero e una non convergenza.
