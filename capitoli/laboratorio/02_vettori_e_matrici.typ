// Setup

#import "../alias.typ": *

// Capitolo

= Vettori e matrici

== Vettori

Un *vettore riga* può essere definito con la sintassi *`[v1,...,vn]`* oppure con la stessa ma senza virgole. Un *vettore colonna* segue la stessa sintassi ma le componenti sono separate da *`;`*.

Possiamo *generare* un vettore che contiene elementi con un certo _pattern_ indicando il valore iniziale, il valore finale e lo step da eseguire tra un elemento e l'altro per generarli tutti. La sintassi per fare ciò è *`inizio:step:fine`*. Se lo step è uguale a $1$ può non essere indicato. Può succedere che il valore finale indicato non sia presente come ultimo elemento del vettore: questo dipende dallo step scelto per generare il vettore.

Possiamo avere lo stesso comportamento con il comando *`linspace(inizio,fine,n_elementi)`*. Questo genera lo stesso vettore che otterremo con l'istruzione *`inizio:step:fine`*, con $ "step" = frac("fine" - "inizio", "n_elementi" - 1) . $

Per generare vettori riga (_colonna_) di $n$ elementi di soli *zeri* o soli *uni* si usano i comandi *`zeros(1,n)`* (*`zeros(n,1)`*) e *`ones(1,n)`* (*`ones(n,1)`*). Questi comandi prendono il numero di righe e il numero di colonne del vettore da generare.

Possiamo conoscere la *lunghezza* di un vettore con il comando *`length(vettore)`*. Con il comando *`size(x)`* invece ci viene restituita la *dimensione* della variabile *`x`*, ovvero il numero di righe e colonne della variabile. Questo comportamento vale per tutte le variabili, visto che ogni variabile in Matlab è una matrice, e quindi anche i vettori che stiamo considerando. Il comando *`length`* ritorna il massimo tra i due valori contenuti nel risultato del comando *`size`*.

Per *accedere* alle componenti del vettore usiamo la sintassi *`vettore(indice)`*.

*ATTENZIONE*: gli indici in Matlab partono da $1$, non da $0$ (_Matlab mi piaci un po' meno adesso_).

Con la parola chiave *`end`* possiamo accedere facilmente all'ultima componente del vettore. Possiamo accedere anche a più componenti contemporaneamente usando un vettore di indici.

Una volta che accediamo alle componenti di un vettore possiamo modificarle o cancellarle. Per quest'ultima operazione assegniamo il vettore vuoto *`[]`* alla componente selezionata.

Possiamo *trasporre* un vettore usiamo la sintassi *`vettore'`*. Questo modifica il vettore da riga a colonna e viceversa.

Per trasformare un vettore riga in una colonna usiamo la sintassi *`vettore(:)`*. Questo modo, se applicato ad un vettore colonna, restituisce una copia del vettore stesso.

*Operazioni* banali tra vettori:
- somma e sottrazione tra vettori;
- somma, sottrazione, moltiplicazione e divisione per uno scalare.

In generale la moltiplicazione, la divisione e la potenza tra vettori non è componente per componente, ma possiamo richiedere questa proprietà usando la *notazione puntata* prima dell'operazione da eseguire. Ad esempio, per eseguire l'elevamento a potenza scriviamo *`v1.^v2`*. Con la stessa notazione possiamo applicare tutte le funzioni matematiche presenti nella suite di Matlab.

È *assolutamente importante* che i vettori siano della stessa dimensione, tranne quando uno dei due operandi è una costante.

Per *concatenare* una serie di vettori creiamo un nuovo vettore composto dai vettori singoli contenuti tra *`[]`*. La sintassi è *`[v1,...,vn]`*, anche senza le virgole. Questa concatenazione _"allunga"_ il vettore in orizzontale, e quindi i vettori devono avere tutti lo stesso numero di righe. Se invece vogliamo concatenare _"allungando"_ in verticale, dividiamo i vettori da concatenare con il *`;`*. In questo caso, i vettori devono avere lo stesso numero di colonne.

Altre funzioni importanti sui vettori sono:
- *`sum(vettore)`*: somma delle componenti;
- *`prod(vettore)`*: prodotto delle componenti;
- *`max(vettore)`*: massima componente;
- *`min(vettore)`*: minima componente;
- *`sort(vettore)`*: componenti ordinate in modo crescente;
- *`diff(vettore)`*: vettore contenente le differenze tra due componenti successive, ovvero $ [v(2) - v(1), v(3) - v(2), dots, v("end") - v("end"-1)] . $

Le ultime tre funzioni che abbiamo sui vettori sono:
- *prodotto scalare*, calcolabile con *`dot(u,v)`* e definito come somma dei prodotti delle componenti con lo stesso indice;
- *norma euclidea* (_norma 2_), calcolabile con *`norm(v,2)`* (_anche senza il 2_) e definita da $ norm(v) = sqrt(sum_(i=1)^n v_i^2) ; $
- *norma infinito* (_norma massima (????)_), calcolabile con *`norm(v,inf)`* e definita da $ norm(v)_infinity = max abs(v_i) . $

== Matrici

Le *matrici* possono essere definite come in Typst, quindi indicando una serie di vettori riga separati da *`;`*, oppure generate con le funzioni *`ones`* e *`zeros`* definite prima, indicando numero di righe e numero di colonne. Abbiamo le solite *operazioni* banali, quindi somma e differenza tra matrici, ma solo della stessa dimensione.

Possiamo *estrarre* un elemento dalla matrice indicando indice di riga e indice di colonna tra tonde, ma anche sotto-matrici, indicando un range sulle righe e un range sulle colonne. Se vogliamo selezionare tutta una riga o colonna indichiamo *`:`* nel range di quella parte. Come nei vettori, abbiamo il vettore vuoto *`[]`* per cancellare righe e colonne.

Possiamo *trasporre* una matrice come nei vettori, _assurdo_.

Possiamo calcolare il *prodotto* tra matrici con il classico *`*`*, ma anche il prodotto matrice-vettore o vettore-matrice. Abbiamo anche quello vettore-vettore ma uno deve essere riga e uno colonna o viceversa. *ATTENZIONE*: la moltiplicazione richiede numero di colonne del primo operando uguale al numero di righe del secondo operando.

Come nei vettori, esistono operazioni elemento per elemento con la *notazione puntata*.

In Matlab possiamo generare alcune matrici particolari:
- *identità* di dimensione $n times n$ con *`eye(n)`*;
- *hilbert* di dimensione $n times n$ con *`hilb(n)`* e contenente, nella cella $H(i,j)$, il valore $(i+j-1)^(-1)$;
- *randomica* di dimensione $n times n$, definita con *`rand(n)`* e contenente valori casuali.

Possiamo *concatenare* due matrici come nei vettori, ma dobbiamo stare attenti alle dimensioni.

Sulle matrici abbiamo le stesse funzioni dei vettori, ma si comportando diversamente:
- *`sum(M)`*: vettore riga che contiene, nella posizione $i$, la somma degli elementi della colonna $i$;
- *`prod(M)`*: vettore riga che contiene, nella posizione $i$, il prodotto degli elementi della colonna $i$;
- *`max(M)`*: vettore riga che contiene, nella posizione $i$, il massimo degli elementi della colonna $i$;
- *`min(M)`*: vettore riga che contiene, nella posizione $i$, il minimo degli elementi della colonna $i$;
- *`sort(M)`*: matrice formata dalle colonne della matrice precedente ma ordinate in modo crescente.

Per calcolare il *determinante* di una matrice quadrata abbiamo la funzione *`det(M)`*. Collegato al concetto di determinante abbiamo il *rango*, calcolabile con la funzione *`rank(M)`*. Ricordiamo che il rango è la dimensione della più grande sotto-matrice quadrata di $A$ avente determinante non nullo. Se $A in RR^(m times n)$ allora $ rank(A) lt.eq min{m,n} . $

Per calcolare l'*inversa* di una matrice quadrata abbiamo la funzione *`inv(M)`*. Una volta calcolata la matrice inversa, è buona cosa controllare se il prodotto tra la matrice e la sua inversa (_e viceversa_) risulta essere la matrice identità.

Abbiamo anche qua nelle matrici due *norme*:
- *norma 1*, calcolabile con *`norm(A,1)`* e definita da $ norm(A)_1 = max_(j = 1, dots, n) sum_(i=1)^n abs(a_(i j)) . $ Si può calcolare anche con *`max(sum(abs(A)))`*;
- *norma infinito* (_norma massima_), calcolabile con *`norm(v,inf)`* e definita da $ norm(A)_infinity = max_(i = 1, dots, n) sum_(j=1)^n abs(a_(i j)) . $ Si può calcolare anche con *`max(sum(abs(A')))`*.

Vediamo infine tre funzioni che manipolano matrici.

Per generare *matrici triangolari superiori* e *inferiori* abbiamo le funzioni *`triu(M,n)`* e *`tril(M,n)`*. Possiamo indicare un parametro *`n`* che permette di spostare l'inizio della matrice da generare sulle sopra-diagonali (*`n`* _positivo_) o sulle sotto-diagonali (*`n`* negativo).

Per ultima, la funzione *`diag(?,t)`* ha due comportamenti diversi:
- se applicata ad un vettore $v$ di lunghezza $n$, genera una matrice $n times n$ con tutti gli elementi del vettore sulla diagonale e il resto $0$. Indicando un numero come parametro aggiuntivo, spostiamo la diagonale sulle sopra-diagonali (*`t`* positivo) o sulle sotto-diagonali (*`t`* negativo). Se viene indicato questo numero come parametro, la dimensione della matrice quadrata è $K = abs(t) + length(v)$;
- se applicata invece ad una matrice $M$ darà l'effetto opposto, ovvero genera un vettore formato dai coefficienti sulla diagonale principale. Come prima, indicando un numero come parametro aggiuntivo selezioneremo le sopra-diagonali o le sotto-diagonali. Se viene indicato questo numero come parametro, la dimensione del vettore è $K = length(M) - abs(t)$.

Queste ultime tre funzioni, se ben concatenate, permettono di creare le *matrici a banda*.
