= Laboratorio 02

Tutto in Matlab è un vettore, quindi ora vediamo i vettori.

Un *vettore riga* può essere definito come lista tra quadre, con gli elementi separati da spazio o virgole. Un *vettore colonna* è uguale ma le componenti sono separate dal punto e virgola.

#align(center)[
  ```matlab
  u = [1 2 3]
  v = [1,2,3]
  w = [1;2;3]
  ```
]

Possiamo generare un vettore indicando il valore di inizio, il punto di fine e lo step da eseguire tra un elemento e l'altro per generarli tutti. Di default lo step è uguale a $1$ quando non viene indicato. La sintassi è "[inizio,step,fine]". A volte l'ultimo valore del vettore non coincide con il valore finale perché lo step non lo raggiunge pienamente.

#align(center)[
  ```matlab
  u = [1:10]
  v = [1:1:10]
  w = [1:2:10]
  ```
]

Con il comando "linspace" possiamo generare un vettore di una certa grandezza formato dai punti tra un punto iniziale e uno finale equispaziati. La sintassi è "linspace(inizio,fine,numero_elementi".

#align(center)[
  ```matlab
  u = linspace(1,10,100)
  ```
]

In poche parole, generiamo un intervallo uguale a quello di linspace con l'istruzione "[inizio,step,fine]" con $"step" = frac("fine" - "inizio", "numero_elementi" - 1)$

Per generare vettori riga (_colonna_) di soli zeri o soli uni si usano i comandi "zeros(1,n)" (_"zeros(n,1)"_) e "ones(1,n)" (_"ones(n,1)"_).

#align(center)[
  ```matlab
  z1 = zeros(1,n)
  z2 = zeros(n,1)

  o1 = ones(1,n)
  o2 = ones(n,1)
  ```
]

Possiamo conoscere la lunghezza di un vettore con il comando "length(vettore)". Con il comando "size(x)" ci viene restituita la dimensione della variabile "x", ovvero il numero di righe e colonne della variabile "x", visto che ogni variabile è un vettore.

#align(center)[
  ```matlab
  u = [1,2,3];
  length(u)
  size(u)
  ```
]

Per accedere alle componenti del vettore usiamo il nome della variabile e indichiamo la posizione tra parentesi tonde. ATTENZIONE: gli indici partono da $1$ (_Matlab mi piaci un po' meno adesso_). Con la parola chiave "end" accediamo all'ultima componente del vettore.

#align(center)[
  ```matlab
  u = [1,2,3];
  u(1)
  u(3)
  u(end)
  ```
]

Possiamo accedere anche a più componenti contemporaneamente usando un vettore di indici. Una volta che accediamo a queste componenti possiamo modificarle o cancellarle. Per cancellare un elemento da un vettore assegnamo il vettore vuoto "[]" alla componente selezionata.

#align(center)[
  ```matlab
  u = [1,2,3,4,5];
  u([1,4,5])
  u(1:2:5)

  u([1,2]) = [5,4]
  ```
]

Possiamo *trasporre* un vettore usando il singolo apice dopo il nome del vettore. Per ottenere un vettore colonna da un vettore riga possiamo usare un trick esotico. Se questo trick è usato su un vettore colonna viene restituita una copia del vettore.

#align(center)[
  ```matlab
  u = [1,2,3];
  u'
  u(:)
  ```
]

Possiamo anche sommare e sottrarre vettori, sommare, sottrarre, moltiplicare e dividere per uno scalare.

#align(center)[
  ```matlab
  u = [1,2,3];
  v = [4,5,6];
  u + v, u - v, u + 5, u - 5, 5 * u, u  / 5
  ```
]

Abbiamo anche operazioni componente per componente, come il prodotto, la divisione e l'elevamento a potenza. L'importante è avere vettori della stessa dimensione, tranne quando uno dei due operandi è una costante.

#align(center)[
  ```matlab
  u = [1,2,3];
  v = [4,5,6];
  u.*v, u./v, u.^v, 2.^v
  ```
]

Con la stessa notazione puntata possiamo applicare tutte le funzioni matematiche presenti nella suite.

Per concatenare una serie di vettori creiamo un nuovo vettore composto dai vettori singoli.

#align(center)[
  ```matlab
  u = [1,2,3];
  v = [4,5,6];
  [u v]
  ```
]

Altre funzioni importanti sui vettori sono:
- "sum": calcola la somma delle componenti;
- "prod": calcola il prodotto delle componenti;
- "max": calcola la massima componente;
- "min": calcola la minima componente;
- "sort": ordina le componenti in modo crescente;
- "diff": calcola il vettore contenente le differenze tra due componenti successive, ovvero $[v(2) - v(1), v(3) - v(2), dots, v("end") - v("end"-1)]$

Ultime tre funzioni sono il *prodotto scalare*, indicato con "dot(u,v)" e definito come somma dei prodotti delle componenti con lo stesso indice, la *norma euclidea* $norm(v) = sqrt(sum_(i=1)^n v_i^2)$, indicata con "norm(u,2)" o "norm(u)" e la *norma infinito* $norm(v)_infinity = max abs(v_i)$, indicata con "norm(u,inf)".

#align(center)[
  ```matlab
  u = [1,2,3];
  v = [4,5,6];
  dot(u,v), norm(u), norm(u,inf)
  ```
]
