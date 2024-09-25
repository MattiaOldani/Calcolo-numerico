= Lezione 05

== Metodi diretti per sistemi lineari

I metodi numerici per sistemi lineari si dividono in:
- metodi diretti: in assenza di errori di arrotondamento restituiscono la soluzione in un numero finito di passi;
- metodi iterativi: la soluzione è ottenuta come limite di una successione di vettori soluzione di sistemi lineari più semplici.

=== Metodo delle sostituzioni in avanti

Se vediamo che la matrice dei coefficienti è triangolare inferiore possiamo risolvere a cascata a partire dalla prima equazione, ovvero risolviamo per la prima variabile, poi sostituisco e faccio la seconda, e così via fino alla fine.

Sia $L = (l_(i j))$ una matrice $n times n$ triangolare inferiore e $b in RR^n$, consideriamo il sistema lineare $L x = b$. Il metodo delle sostituzioni in avanti consiste in $ x_i = 1 / l_(i i) (b_i - sum_(j=1)^(i) l_(i j) x_j) i = 1, dots, n . $ Questo algoritmo ha complessità $O(n^2)$.

=== Metodo delle sostituzioni all'indietro

Se vediamo che la matrice dei coefficienti è triangolare superiore possiamo risolvere ad arrampicata a partire dall'ultima equazione, ovvero risolviamo per l'ultima variabile, poi sostituisco e faccio la penultima, e così via fino all'inizio.

Sia $U = (u_(i j))$ una matrice $n times n$ triangolare inferiore e $b in RR^n$, consideriamo il sistema lineare $U x = b$. Il metodo delle sostituzioni all'indietro consiste in $ x_i = 1 / u_(i i) (b_i - sum_(j=i)^(n) u_(i j) x_j) i = n, dots, 1 . $ Questo algoritmo ha complessità $O(n^2)$.

=== Metodo di eliminazione gaussiana (MEG)

Se non abbiamo triangolare superiore e inferiore usiamo MEG: trasformiamo il sistema $A x = b$ in un sistema equivalente (con la stessa soluzione $x$) triangolare superiore $U x = overline(b)$ mediante combinazioni lineari di righe. Si risolve poi il sistema appena trovato con il metodo delle sostituzioni all'indietro.

L'algoritmo segue i seguenti passi:
+ pongo $A^((0)) = A$ e $b^((0)) = b$;
+ per costruire $A^((t))$ e $b^((t))$, con $1 lt.eq t lt.eq n$ a partire da $A^((t-1))$ e $b^((t-1))$ devo porre a zero gli elementi sulla colonna $t$ a partire dalla riga $t+1$ con:
  + ricopio le prime $t$ righe di $A^((t-1))$ nella prime $t$ righe di $A^((t))$ e i primi $t$ elementi di $b^((t-1))$ nei primi $t$ elementi di $b^((t))$;
  + per ogni riga successiva $i gt.eq t+1$ calcolo il coefficiente $K_i = a^((t-1))_(i t) / a^((t-1))_(t t)$;
  + si modifica l'equazione $i$-esima modificando ogni coefficiente con se stesso meno coefficiente per valore della riga $t$-esima stessa colonna; modificare l'equazione vuol dire modificare ogni cella della riga $i$-esima della matrice ma anche il vettore dei termini noti;
+ mi fermo quando $A^((t))$ è triangolare superiore.

Il MEG costruisce anche una matrice triangolare inferiore $L$ tale che $L dot U = A$.

=== Fattorizzazione LU

Una volta calcolata la fattorizzazione $L U$ di $A$ il sistemare lineare $A x = b arrow.long.double.l.r L U x = b$ può essere risolto in due step:
- $L y = b$ sistema triangolare inferiore;
- $U x  = y$ sistema triangolare superiore.

Come vantaggi offre quello di risolvere sistemi triangolari che costano meno del MEG, poiché questo applicato ogni volta può rallentare l'esecuzione.

Data $A in RR^(n times n)$, per applicare la fattorizzazione LU seguiamo i seguenti passi:
+ definiamo le matrici $U = A$ e $L = I_n$;
+ applichiamo MEG alla matrice $U$ ma modificando al tempo stesso la matrice $L$: durante il calcolo del coefficiente $K_i$ usando il valore $a^((t-1))_(i t)$, mettiamo in $l_(i t)$ il coefficiente appena calcolato.
