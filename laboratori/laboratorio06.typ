= Laboratorio 06

Per disegnare i grafici si usa il comando "plot(x,y)" con due vettori di uguale dimensione. Il comando crea una nuova finestra se non ce ne sono aperte, altrimenti usa l'ultima finestra grafica utilizzata e sovrascrive il grafico già presente. Per mantenere i grafici usiamo il comando "hold on" oppure a plot passiamo una sequenza di vettori $x$ e $y$ da graficare in sequenza. Per aprire più finestre grafiche usiamo il comando "figure(N)", che genera delle finestre numerate in modo incrementale.

Al comando è possibile passare una serie di specifiche per:
- colore della linea;
- simbolo che viene disegnato come punto;
- come vengono collegati i vari punti del grafico.

Con "doc LineSpec" vengono mostrate le opzioni per lo stile della linea.

Con "axis([minx maxx miny maxy])" vengono modificati i bound del grafico.

I comandi:
- "title(titolo)";
- "xlabel(label)";
- "ylabel(label)";
- "legend(legenda)" (_se più grafici la legenda è da passare in ordine_)
permettono di customizzare il grafico generato.

Il comando "grid on" mostra la griglia.

Con "subplot(righe,colonne,area)" crea una griglia $"righe" times "colonne"$ numerata per riga da $1$ che possiamo selezionare per mostrare dei grafici nella stessa finestra grafica.

Se una funzione deve essere valutata più volte in una serie di valori o magari è molto lunga e complessa è comodo definire la funzione una volta e poi valutarla tutte le volte che serve senza riscriverla. Possiamo fare ciò con le anonymous function, definite con la seguente sintassi:

#align(center)[
  ```matla1b
  nomefunzione = @(parametri) funzione
  ```
]

Questa funzione è poi valutabile passando _IN ORDINE_ i parametri richiesti.
