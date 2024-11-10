// Setup

#import "../alias.typ": *

// Capitolo

= Sistemi lineari

== Definizione

Un *sistema lineare* di $m$ equazioni in $n$ incognite $x_1, x_2, dots, x_n$ è un sistema formato da $m$ equazioni lineari in $x_1, x_2, dots, x_n$, ossia $ cases(a_11 x_1 + a_12 x_2 + dots + a_1n x_n = b_1, dots, a_(m 1) x_1 + a_(m 2) x_2 + dots + a_(m n) x_n = b_m) . $

Possiamo suddividere il sistema lineari in più componenti:
- il vettore $x in RR^n$ tale che $x = (x_i)$ si chiama *vettore soluzione*;
- la matrice $A in RR^(m times n)$ tale che $A = (a_(i j))$ si chiama *matrice dei coefficienti* del sistema;
- il vettore $b in RR^m$ tale che $b = (b_i)$ si chiama *vettore termine noto*;
- la matrice $M in RR^(m times (n+1))$ tale che $M = (A bar.v b)$, ottenuta accostando alle colonne di $A$ il vettore $b$, si chiama *matrice completa* del sistema.

In forma compatta, dati la matrice $A in RR^(m times n)$ e il vettore $b in RR^m$, il problema da risolvere è quello di trovare il vettore $x in RR^n$ tale che $ A x = b . $

Abbiamo tre possibili condizioni:
- *sistema impossibile*: il sistema non ammette soluzioni;
- *sistema possibile determinato*: il sistema ammette una e una sola soluzione;
- *sistema possibile indeterminato*: il sistema ammette infinite soluzioni.

*Teorema di Cramer*: siano $A$ una matrice quadrata di ordine $n$ e $b in RR^n$, allora il sistema lineare $A x = b$ ammette una e una sola soluzione se e solo se $det(A) eq.not 0$.

Se il determinante è uguale a $0$ potremmo avere sia sistema impossibile sia sistema possibile indeterminato.

*Teorema di Rouché-Capelli*: siano $A$ una matrice $m times n$ e $b in RR^m$, allora il sistema lineare $A x = b$ ammette soluzione se e solo se $ rank(A) = rank(A bar.v b) . $

Osserviamo che se $rank(A) = rank(A bar.v b)$, chiamato $r = rank(A)$ possiamo avere:
- $r = n$ e quindi il sistema ammette una e una sola soluzione;
- $r < n$ e quindi il sistema ammette infinite soluzioni.

I metodi numerici per la risoluzione di sistemi lineari si dividono in:
- *metodi diretti*: in assenza di errori di arrotondamento restituiscono la soluzione in un numero finito di passi;
- *metodi iterativi*: la soluzione è ottenuta come limite di una successione di vettori soluzione di sistemi lineari più semplici.

== Metodi diretti per sistemi lineari

=== Metodo delle sostituzioni in avanti

Se vediamo che la matrice dei coefficienti è _triangolare inferiore_ possiamo risolvere il sistema _"a cascata"_ a partire dalla prima equazione. In poche parole, risolviamo la prima equazione per la prima variabile, poi sostituisco il risultato nelle altre equazioni e ripeto le stesse operazioni per la variabile successiva, visto che ci troviamo nella stessa situazione della prima.

Sia $L = (l_(i j))$ una matrice $n times n$ triangolare inferiore e $b in RR^n$. Consideriamo il sistema lineare $L x = b$. Il metodo delle sostituzioni in avanti consiste in $ x_i = 1 / l_(i i) (b_i - sum_(j=1)^(i) l_(i j) x_j) quad i = 1, dots, n . $ Questo algoritmo ha complessità $O(n^2)$.

=== Metodo delle sostituzioni all'indietro

Se vediamo che la matrice dei coefficienti è _triangolare superiore_ possiamo risolvere _"ad arrampicata"_ a partire dall'ultima equazione. In poche parole, risolviamo l'ultima equazione per l'ultima variabile, poi sostituisco il risultato nelle altre equazioni e ripeto le stesse operazioni per la variabile precedente, visto che ci troviamo nella stessa situazione della prima.

Sia $U = (u_(i j))$ una matrice $n times n$ triangolare inferiore e $b in RR^n$, consideriamo il sistema lineare $U x = b$. Il metodo delle sostituzioni all'indietro consiste in $ x_i = 1 / u_(i i) (b_i - sum_(j=i)^(n) u_(i j) x_j) quad i = n, dots, 1 . $ Questo algoritmo ha complessità $O(n^2)$.

=== Metodo di eliminazione gaussiana (MEG)

Se non abbiamo una matrice triangolare superiore o inferiore usiamo il *metodo di eliminazione gaussiana*: trasformiamo il sistema $A x = b$ in un sistema equivalente triangolare superiore $U x = overline(b)$ mediante combinazioni lineari delle righe. Si risolve poi il sistema appena trovato con il metodo delle sostituzioni all'indietro.

L'algoritmo segue i seguenti passi:
+ pongo $A^((0)) = A$ e $b^((0)) = b$;
+ per costruire $A^((t))$ e $b^((t))$, con $1 lt.eq t lt.eq n$, a partire da $A^((t-1))$ e $b^((t-1))$ devo porre a zero gli elementi sulla colonna $t$ a partire dalla riga $t+1$ con:
  + ricopio le prime $t$ righe di $A^((t-1))$ nella prime $t$ righe di $A^((t))$ e i primi $t$ elementi di $b^((t-1))$ nei primi $t$ elementi di $b^((t))$;
  + per ogni riga successiva $i gt.eq t+1$ calcolo il coefficiente $K_i = a^((t-1))_(i t) / a^((t-1))_(t t)$;
  + si modifica l'equazione $i$-esima modificando ogni coefficiente con se stesso meno il coefficiente per il valore della riga $t$-esima sulla stessa colonna; modificare l'equazione vuol dire modificare ogni cella della riga $i$-esima della matrice ma anche il vettore dei termini noti;
+ mi fermo quando $A^((t))$ è triangolare superiore.

Questo algoritmo ha complessità $O(n^3)$.

Il MEG durante la sua applicazione costruisce una fattorizzazione della matrice $A$ in due matrici $L$ e $U$ rispettivamente triangolare inferiore e triangolare superiore tali che $L U = A$.

=== Fattorizzazione LU

La fattorizzazione sopra citata è detta *fattorizzazione LU* e una volta calcolata il sistema lineare $A x = b$ può essere scritto come $L U x = b$ e può essere risolto in due step:
- $L y = b$ sistema triangolare inferiore (_sostituzioni in avanti_);
- $U x  = y$ sistema triangolare superiore (_sostituzioni all'indietro_).

Il vantaggio che offre questa fattorizzazione è quello di risolvere sistemi triangolari che costano meno del MEG.

L'algoritmo di fattorizzazione segue i seguenti passi:
+ definiamo le matrici $U = A$ e $L = I_n$;
+ applichiamo MEG alla matrice $U$ ma modificando al tempo stesso la matrice $L$: durante il calcolo del coefficiente $K_i$ usando il valore $a^((k-1))_(i t)$, mettiamo in $l_(i t)$ il coefficiente appena calcolato.

=== Fattorizzazione di Cholesky

Una matrice simmetrica $A in RR^(n times n)$ si dice *definita positiva* se $ A x dot x gt.eq 0 forall x in RR^n $ e $ A x dot x = 0 arrow.long.double.l.r x = 0 . $

*Criterio di Sylvester*: una matrice $A$ simmetrica di ordine $n$ è definita positiva se e solo se $ det(A_k) > 0 quad k = 1, dots, n $ con $A_k$ sottomatrice principale di ordine $k$ formata dalle prime $k$ righe e colonne.

*Teorema*: sia $A in RR^(n times n)$ simmetrica definita positiva. Allora esiste una matrice $R in RR^(n times n)$ triangolare superiore tale che $ A = R^T R . $

Tale fattorizzazione della matrice $A$ è detta *fattorizzazione di Cholesky*.

Con questa fattorizzazione trasformiamo il sistema $A x = b$ nel sistema $R^T R x = b$, che andiamo a risolvere in due step:
+ $R^T y = b$ sistema triangolare inferiore (_sostituzioni in avanti_);
+ $R x = y$ sistema triangolare superiore (_sostituzioni all'indietro_).

Se si devono risolvere più sistemi lineari con la stessa matrice $A$, conviene applicare la fattorizzazione di Cholesky per risolvere dei sistemi triangolari che costano meno del MEG. Inoltre, il tempo di calcolo della fattorizzazione è $approx 1/3 n^3$, che è la metà della fattorizzazione LU ($approx 2/3 n^3$).

== Metodi iterativi per sistemi lineari

=== Autovalori e autovettori

Sia $A$ una matrice quadrata di ordine $n$. Il numero $lambda in CC$ è detto *autovalore* di $A$ se esiste un vettore $v in CC^n bar.v v eq.not 0$ tale che $ A v = lambda v . $

Il vettore è detto *autovettore* associato all'autovalore $lambda$. L'insieme $sigma(A)$ degli autovalori di $A$ è detto *spettro* di $A$.

*Proposizione*: l'autovalore $lambda$ è soluzione dell'equazione caratteristica $ p_A (lambda) := det(A - lambda I) = 0 , $ dove $p_A (lambda)$ è detto *polinomio caratteristico*.

Dal teorema fondamentale dell'algebra segue che una matrice di ordine $n$ ha $n$ autovalori.

Vediamo alcune proprietà:
- una matrice è *singolare* se e solo se ha almeno un autovalore nullo;
- se $A$ è simmetrica definita positiva allora gli autovalori di $A$ sono tutti positivi;
- siano $lambda_i (A) quad i = 1, dots, n$ gli autovalori della matrice $A in RR^(n times n)$. Allora $ det(A) = product_(i=1)^n lambda_i (A) . $
- $trace(A) := sum_(i=1)^n a_(i i) = sum_(i=1)^n lambda_i (A)$, con $trace(A)$ *traccia* di $A$.

Sia $A$ una matrice quadrata di ordine $n$, si chiama *raggio spettrale* di $A$ ($rho(A)$) il massimo valore assoluto degli autovalori di $A$, ovvero $ rho(A) := max_(i = 1, dots, n) abs(lambda_i (A)) . $

*Proposizione*: sia $A$ una matrice quadrata di ordine $n$, allora $ norm(A)_2 = sqrt(rho(A^T A)) . $

Siano $A$ una matrice quadrata di ordine $n$ non singolare e $norm(dot)$ una generica norma di matrice; si chiama *numero di condizionamento* della matrice $A$, e si indica con $K(A)$, la quantità scalare $ K(A) = norm(A) dot norm(A^(-1)) . $

Una matrice $A$ si dice *sparsa* se ha un numero elevato di elementi $a_(i j) = 0$. Comunemente, una matrice quadrata di ordine $n$ è ritenuta sparsa quando il numero di elementi diversi da zero è di ordine $O(n)$.

Può capitare che la fattorizzazione LU o la fattorizzazione di Cholesky di una matrice sparsa $A$ generino due matrici piene. Questo fenomeno è detto *fill-in* (_riempimento_), e questo rappresenta un problema se le matrici sono di grandi dimensioni, rendendo la risoluzione del sistema lineare inefficiente.

Per matrici le sparse di grandi dimensioni i metodi iterativi possono essere più efficienti dei metodi diretti. Ma cosa sono i metodi iterativi?

Un *metodo iterativo* per la risoluzione del sistema lineare $A x = b$ consiste nel costruire una successione di vettori $x^((k)) in RR^n bar.v k gt.eq 0$ con la speranza che $ lim_(k arrow infinity) x^((k)) = x , $ a partire da un vettore iniziale $x^((0))$ dato.

In generale, un metodo iterativo per la risoluzione del sistema lineare $A x = b$ ha la forma $ x^((k+1)) = B x^((k)) + g $ con $B in RR^(n times n)$ *matrice di iterazione* e $g in RR^n$.

*Teorema di convergenza*: un metodo iterativo nella forma descritta è convergente, cioè $lim_(k arrow infinity) x^((k)) = x$, se e solo se $ rho(B) < 1 , $ dove $rho(B)$ è il raggio spettrale della matrice $B$.

=== Metodo di Jacobi

Il *metodo di Jacobi* isola nell'$i$-esima equazione l'$i$-esima incognita e, a partire da un vettore $x^((0)) in RR^n$, genera i passi successivi $k gt.eq 0$ con il seguente iterazione: $ x_i^((k+1)) = 1 / a_(i i) (b_i - sum_(j = 1 and j eq.not i)^n a_(i j) x_j^((k))) quad i = 1, dots, n . $

In poche parole, isoliamo l'$i$-esima incognita nell'$i$-esima equazione e risolviamo ogni equazione sostituendo i risultati ottenuti al punto precedente.

Dato il sistema $A x = b$ creiamo le matrici $D,E,F$ tali che:
- $D$ è diagonale e contiene la diagonale di $A$;
- $E$ è triangolare inferiore, contiene gli elementi triangolari inferiori di $A$ cambiati di segno e ha $0$ sulla diagonale;
- $F$ è triangolare superiore, contiene gli elementi triangolari superiori di $A$ cambiati di segno e ha $0$ sulla diagonale;

Notiamo che $A = D - E - F$. Chiamiamo *matrice di iterazione di Jacobi* la matrice $ B_j = D^(-1) (E + F) . $ Si può verificare che questo metodo si scrive in forma compatta come $ x^((k+1)) = B_j x^((k)) + D^(-1) b . $

Grazie al teorema di convergenza, questo metodo converge se e solo se $ rho(B_j) < 1 . $

Gli autovalori di $B_j$ sono i $lambda$ tali che $ det(lambda D - E - F) = 0 . $

=== Metodo di Gauss-Seidel

Come prima, isoliamo l'$i$-esima incognita nell'$i$-esima equazione e partiamo da un vettore iniziale $x^((0))$. Il metodo di Gauss-Seidel calcola tutte le incognite $x_i^((k+1))$ utilizzando $x_j^((k+1)) quad forall j < i$, altrimenti utilizza $x_t^((k)) quad forall t gt.eq i$.

L'iterazione generica del metodo di Gauss-Seidel, dato il sistema lineare $A x  = b$ con $A in RR^(n times n)$ è $ x_i^((k+1)) = 1 / a_(i i) (b_i - sum_(j=1)^(i-1) a_(i j) x_j^((k+1)) - sum_(j=i+1)^n a_(i j) x_j^((k))) quad i = 1, dots, n . $

Come prima, dividiamo $A$ nelle matrici $D,E,F$. Chiamiamo *matrice di iterazione di Gauss-Seidel* la matrice $ B_(g s) = (D - E)^(-1) F . $ Si può verificare che questo metodo si scrive in forma compatta come $ x^((k+1)) = B_(g s) x^((k)) + (D - E)^(-1) b . $

Grazie al teorema di convergenza, questo metodo converge se e solo se $ rho(B_(g s)) < 1 . $

Gli autovalori di $B_(g s)$ sono i $lambda$ tali che $ det(lambda (D - E) - F) = 0 . $

=== Osservazioni

Se inseriamo la condizione $a_(i i) eq.not 0$ assicuriamo che il metodo si possa costruire. Non è però garantita la convergenza, quindi non è sempre vero che $ lim_(k arrow infinity) x^((k)) = x . $

=== Verificare la convergenza

Sia $A$ una matrice quadrata di ordine $n$, allora essa è a *dominanza diagonale stretta per righe* se $ abs(a_(i i)) > sum_(j=1 and j eq.not i)^n abs(a_(i j)) quad forall i = 1, dots, n . $

*Teorema*: sia $A in RR^(n times n)$ matrice a dominanza diagonale stretta per righe, allora i metodi di Jacobi e Gauss-Seidel applicati al sistema lineare $A x = b$ sono convergenti.

*Teorema*: sia $A in RR^(n times n)$ una matrice simmetrica definita positiva, allora il metodo di Gauss-Seidel converge.

=== Test d'arresto

Per arrestare l'esecuzione dei due metodi abbiamo due possibili alternative:
- *test del residuo*: fissata una tolleranza $toll << 1$, arrestiamo il metodo iterativo se $ frac(norm(b - A x^((k))), norm(b)) < toll ; $
- *test dell'incremento*: fissata una tolleranza $toll << 1$, arrestiamo il metodo iterativo se $ frac(norm(x^((k+1)) - x^((k))), norm(x^((k)))) < toll . $

Notiamo che, se il numero di condizionamento della matrice $A$ è grande, allora la convergenza è lenta.
