= Interpolazione polinomiale

== Lavorare con i polinomi

In Matlab non abbiamo degli oggetti built-in per contenere dei *polinomi*. Possiamo pensare di rappresentarli come vettori contenenti i coefficienti del polinomio, a partire da quello del grado maggiore (*coefficiente direttivo*) fino a quello del grado minore (*termine noto*).

Grazie a questa rappresentazione, in Matlab abbiamo le funzioni:
- *`polyval(p,points)`*: valuta il polinomio $p$ nei punti dati;
- *`polysum(p,q)`*: somma il polinomio $p$ al polinomio $q$. Definito da noi in un esercizio, dobbiamo stare attenti a sommare polinomi dello stesso grado o ad aggiungere un pad di zeri;
- *`conv(p,q)`*: moltiplica il polinomio $p$ con il polinomio $q$;
- *`deconv(p,q)`*: divide il polinomio $p$ per $q$, ritornando quoziente e resto;
- *`polyder(p)`*: deriva il polinomio $p$;
- *`polyint(p)`*: integra il polinomio $p$ dando la primitiva con $C = 0$;
- *`roots(p)`*: calcola le radici di $p$;
- *`poly(r)`*: costruisce un polinomio $p$ a partire dalle sue radici $r$.

Come *operazioni* banali abbiamo prodotto e divisione per uno scalare, moltiplicando o dividendo il vettore che rappresenta il polinomio per lo scalare dato.

== Polinomio interpolatore

Il *polinomio interpolatore* si calcola con la funzione *`polyfit(x,y,n)`*. Questa richiede due vettori, che contengono i nodi di interpolazione, e il grado del polinomio interpolatore.

Il grado del polinomio risultante deve essere *NECESSARIAMENTE* uno in meno della grandezza del sample di nodi di interpolazione. Abbiamo due modi per garantire ciò:
- se ci viene dato un sample di punti, impostiamo il grado del polinomio alla lunghezza del sample meno uno;
- se ci viene dato il grado $n$ del polinomio, generiamo un sample di $n+1$ punti.

Quando le misurazioni sperimentali si pongono con una relazione lineare ma non in linea perfetta è meglio usare la *retta di regressione*. Essa è meno dispendiosa da calcolare rispetto rispetto al polinomio interpolatore. Essa si calcola con il comando *`polyfit(x,y,1)`*. Se i punti da approssimare sono due, la retta di regressione e il polinomio interpolatore coincidono.

Infine, possiamo partizionare un intervallo in $m$ sotto-intervalli e interpolare ogni singolo sotto-intervallo. Il caso più semplice è la *spline lineare interpolante*, ovvero quella funzione che interpola ogni sotto-intervallo con delle rette. In Matlab, possiamo trovare una spline lineare con la funzione *`griddedInterpolant(x,y,'linear')`*.

Siano $H$ la massima ampiezza dei sotto-intervalli e $E(H)$ l'errore di approssimazione tra la spline e la funzione in quel sotto-intervallo. Si può dimostrare che $ E(H) lt.eq C H^2 bar.v C in RR. $
