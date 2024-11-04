= Laboratorio 08

Dati $n+1$ punti, esiste un unico polinomio di grado $n$ detto *polinomio interpolatore* che, calcolato nei punti, genera identità. In Matlab, il polinomio interpolatore si calcola con il comando "polyfit(x,y,n)".

Il grado del polinomio deve essere *NECESSARIAMENTE* uno in meno della grandezza del sample usato, e questo si fa:
- impostare il grado calcolando la lunghezza e poi meno uno;
- impostare un sample di $n+1$ fissato il grado $n$.

Non sempre i punti con "linspace" vanno bene: la funzione $f(x) = frac(1, 1+x^2)$, detto *controesempio di Runge*, non fa diminuire l'errore ma bensì lo aumenta. I *nodi di Chebyshev* permettono di trovare un buon sample che diminuisca l'errore, essi sono nella forma $ c_k = cos(frac(pi (2k - 1), 2n)) quad k = 1, dots, n $ con $n$ numero di nodi. Questo è per l'intervallo $[-1,1]$, per l'intervallo generico $[a,b]$ facciamo $ x_k = frac(a+b,2) + frac(b-a,2) c_k . $ I punti si accumulano verso gli estremi del dominio.

Spesso le misurazioni sperimentali si pongono con una relazione lineare ma non in linea perfetta: in questo caso è meglio usare la *retta di regressione* (_meno dispendiosa_) rispetto al polinomio interpolatore (_più dispendioso_). Essa approssima nel senso dei minimi quadrati e si calcola con il comando "polyfit(x,y,1)". Se i punti da approssimare sono due, la retta di regressione e il polinomio interpolatore coincidono e passano per entrambi i punti in esame.
