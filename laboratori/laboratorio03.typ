= Laboratorio 03

Le matrici possono essere definite come in Typst, oppre generate con "ones" e "zeros" definendo numero di righe e numero di colonne. Possiamo fare somma e differenza tra matrici, ma solo della stessa dimensione.

#align(center)[
  ```matlab
  A = [1 2 3; 4 5 6]
  B = ones(2,3)
  C = zeros(2,3)

  B + C
  ```
]

Possiamo estrarre un elemento dalla matrice indicano indice di riga e indice di colonna tra tonde, ma anche sotto-matrici, indicando un range sulle righe e un range sulle colonne. Se vogliamo selezionare tutta una riga o colonna indichiamo ":" nel range di quella parte. Come nei vettori, abbiamo il vettore vuoto "[]" per cancellare righe e colonne.

#align(center)[
  ```matlab
  A = [1 2 3; 4 5 6; 7 8 9]
  A(1,2)
  A(1:2,:) = []
  ```
]

Possiamo trasporre una matrice con il singolo apice, come nei vettori. Possiamo calcolare anche il prodotto tra matrici con il classico "\*", ma anche il prodotto matrice-vettore o vettore-matrice. Abbiamo anche quello vettore-vettore ma uno deve essere riga e uno colonna.

#align(center)[
  ```matlab
  A = [1 2; 3 4]
  B = [1 2 3; 4 5 6]
  u = [1 2]

  A*B
  u*A
  B*(u')
  u*(u')
  ```
]

Come nei vettori, esistono operazoni elemento per elemento con la notazione puntata.

Esistono alcune matrici particolari:
- *identità*: di dimensione $n times n$, definita con "eye(n)";
- *hilbert*: di dimensione $n times n$, definita con "hilb(n)" e contenente, nella cella $H(i,j)$, il valore $(i+j-1)^(-1)$;
- *randomica*: di dimensione $n times n$, definita con "rand(n)" e contenente valori casuali.

Possiamo concatenare due matrici come nei vettori (_occhio a dove inseriamo la seconda_), ma dobbiamo stare attenti alle dimensioni.

Sulle matrici abbiamo le stesse funzioni dei vettori, ma si comportando diversamente:
- *sum*: ritorna un vettore riga che contiene, nella posizione $i$, la somma degli elementi della colonna $i$;
- *prod*: ritorna un vettore riga che contiene, nella posizione $i$, il prodotto degli elementi della colonna $i$;
- *max*: ritorna un vettore riga che contiene, nella posizione $i$, il massimo degli elementi della colonna $i$;
- *min*: ritorna un vettore riga che contiene, nella posizione $i$, il minimo degli elementi della colonna $i$;
- *sort*: ritorna una matrice formata dalle colonne della matrice precedente ma ordinate in modo crescente.

Abbiamo anche la funzione "det" per calcolare il determinante di _matrici quadrate_ e la funzione "rank" per calcolare il rango di una matrice. Il rango è la dimensione della più grande sotto-matrice quadrata avente determinante non nullo. Se $A in RR^(m times n)$ allora $"rank" lt.eq min{m,b}$.

Per calcolare l'inversa di una matrice quadrata abbiamo la funzione "inv". È buona cosa controllare se il prodotto tra la matrice e la sua inversa (_e viceversa_) è la matrice identità.

Abbiamo anche qua le norme:
- norma $1$: calcolabile con "norm(A,1)" e definita da $norm(A)_1 = max_(j = 1, dots, n) sum_(i=1)^n abs(a_(i,j))$; si può calcolare anche con "max(sum(abs(A)))";
- norma infinito: calcolabile con "norm(A,inf)" e definita da $norm(A)_infinity = max_(i = 1, dots, n) sum_(j=1)^n abs(a_(i,j))$; si può calcolare anche con "max(sum(abs(A')))".

La funzione "diag", se applicata ad un vettore di lunghezza $n$, genera una matrice $n times n$ con gli elementi del vettore sulla diagonale. Indicando un numero dopo il vettore si sposta quel vettore sulle sopra/sotto-diagonali, aumentando però la dimensione della matrice di "abs(numero)".

La funzione "diag", se applicata invece ad una matrice, darà l'effetto opposto, quindi ritorna un vettore formato dai coefficienti sulla diagonale principale. Come prima, indicando un numero selezioneremo le sopra/sotto-diagonali.

La funzione "diag" è comoda per creare le *matrici a banda*.

Infine, per generare matrici triangolari superiori e inferiori si usano i comando "triu(M)" e "tril(M)", con anche l'indicazioni di un numero per alzare/abbassare la banda di zeri. ATTENZIONE: con un numero positivo andiamo a selezionare le sopra-diagonali, con un numero negativo le sotto-diagonali.
