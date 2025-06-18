// Setup


// Capitolo

= Introduzione a Matlab

== Solite nozioni di ogni linguaggio di programmazione

Ogni variabile in *Matlab* è una *matrice*, anche gli scalari, variabili dalle quali partiremo oggi.

L'*assegnamento* è quello classico di ogni linguaggio di programmazione, ormai mi sto annoiando. Ogni volta che si fa un assegnamento l'espressione viene valutata, il risultato viene salvato nella variabile e viene mostrato nel prompt il risultato. Per evitare la stampa della valutazione si usa il simbolo *`;`* alla fine dell'espressione. Se un'espressione viene valutata ma non viene assegnata a nessuna variabile, il risultato viene salvato nella variabile *`ans`*.

Con il comando *`who`* vengono mostrate le variabili presenti in memoria, mentre con il comando *`whos`* vengono stampate informazioni aggiuntive, ad esempio la dimensione (_vedremo poi la nozione di dimensione_), lo spazio che occupano in memoria, la classe di appartenenza (_tipo della variabile_) e gli attributi.

Per la classe di appartenenza, in Matlab noi useremo principalmente variabili *`double`*, *`logical`* e *`function_handle`*. Sicuramente ci sono molti altri tipi, ma per ora non ci interessa.

Con il comando *`clear`* vengono cancellate tutte le variabili in memoria, mentre con il comando *`clear x`* viene cancellata la variabile *`x`* dalla memoria.

In Matlab ci sono alcune variabili predefinite, ad esempio il *pigreco* (nella variabile *`pi`*) oppure l'*unità immaginaria* (nelle variabili *`i`* e *`j`*). Non è presente di default il numero di Nepero, ma lo possiamo calcolare facilmente con l'espressione *`exp(1)`*.

Queste variabili, nonostante siano predefinite, possono essere sovrascritte con dei nuovi valori. Per recuperare i valori originali di queste variabili basta utilizzare il comando *`clear`* visto in precedenza.

Abbiamo parlato di unità immaginaria, introduciamo i *numeri complessi*. Se la variabile *`i`* non è stata ridefinita, possiamo definire un numero complesso tramite la sua parte reale *`a`* e la sua parte immaginaria *`b`* come il numero *`a + i*b`*. Se *`b`* non è una variabile possiamo evitare l'operatore *`*`* tra la *`i`* e la *`b`*. I numeri complessi hanno come attributo la dicitura *`complex`*.

Sui numeri complessi abbiamo una serie di funzioni utili come *`real`*, *`imag`*, *`conj`* e *`abs`*. Ce ne sono molte altre, ma queste sono quelle più utili e utilizzate.

Per una lista di tutte le funzioni predefinite disponibili in Matlab si può usare il comando *`help elfun`*. Il comando *`help`* possiamo usarlo per avere informazioni anche su una specifica funzione.

Come ultimo tipo vediamo il *`double`*. I numeri in virgola mobile hanno una precisione enorme: dentro *`realmax`* e *`realmin`* abbiamo rispettivamente il valore massimo e il valore minimo *positivo*. Se andiamo oltre *`realmax`* viene restituito il valore *`Inf`*, che però è anche il risultato di una divisione per $0$, quindi bisogna stare attenti a questo valore.

Di default, Matlab mostra un numero in virgola mobile con $5$ cifre significative. Il numero di queste ultime può essere cambiato con:
- *`format short`*, per passare a $5$ cifre significative;
- *`format long`*, per passare a $15$ cifre significative;
- *`format short e`*, per passare a $5$ cifre significative in notazione esponenziale;
- *`format long e`*, per passare a $15$ cifre significative in notazione esponenziale.

La *cancellazione numerica* è la perdita di cifre significative quando si sottraggono numeri che sono quasi uguali. Questo è dato dal numero di cifre significative che vengono utilizzate.

Purtroppo, per questo fenomeno della cancellazione numerica, in Matlab non vale in generale la proprietà associativa della somma e la proprietà distributiva del prodotto rispetto alla somma.

In Matlab possiamo scrivere delle *funzioni* (_ma dai_). Essere vanno messe in un file a parte, che contiene solo quella funzione. Il nome della funzione e del file devono coincidere. La firma di una funzione Matlab è *`function [outputs] = name(inputs)`*.

Per aiutare la scrittura di funzioni più complesse, abbiamo anche i costrutti *`if`*, *`while`* e *`for`*.

Vediamo infine le *anonymous function*. Se una funzione deve essere valutata più volte in una serie di valori o magari è molto lunga e complessa è comodo definire la funzione una volta e poi valutarla tutte le volte che serve senza riscriverla. Possiamo fare questo con la sintassi *`nomefunzione = @(parametri) funzione`*. Quando voglio valutare una funzione la chiamo con i parametri indicati *in ordine*.

== Grafici

In Matlab possiamo anche disegnare grafici (_matplotlib suca_). Il comando principale è *`plot(x,y)`*, dove *`x`* e *`y`* sono due vettori di uguale dimensione. Il comando crea una nuova finestra se non ce ne sono altre aperte, altrimenti usa l'ultima finestra grafica utilizzata e sovrascrive il grafico già presente. Per mantenere i grafici precedenti possiamo:
- usare il comando *`hold on`*;
- passare al comando *`plot`* una sequenza di coppie di vettori da graficare in sequenza.

Per aprire più finestre grafiche usiamo il comando *`figure(N)`*.

Al comando *`plot`* è possibile passare una serie di specifiche per definire:
- il *colore* della linea;
- il *simbolo* che viene disegnato come punto;
- come vengono *collegati* i vari punti del grafico.

Con il comando *`doc LineSpec`* vengono mostrate le opzioni per lo stile della linea.

Per rendere carino un grafico possiamo:
- modificare i bound del grafico con *`axis([minx maxx miny maxy])`*;
- inserire un titolo con *`title(titolo)`*;
- inserire una label per l'asse $x$ con *`xlabel(label)`*;
- inserire una label per l'asse $y$ con *`ylabel(label)`*;
- inserire una legenda con *`legend(legenda)`*. Se in una finestra grafica sono stati inseriti più grafici, la legenda si collegherà ai grafici nell'ordine di inserimento;
- inserire una griglia con *`grid on`*.

Infine, se vogliamo avere più grafici nella stessa finestra grafica ma uno accanto all'altro, usiamo il comando *`subplot(nrighe,ncolonne,area)`*. Questo comando crea una griglia $n r times n c$ formata da aree numerate per riga a partire dal numero $1$. Per selezionare un'area della griglia indichiamo il numero dell'area nel comando visto.
