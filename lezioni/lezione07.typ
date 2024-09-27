#import "alias.typ": *


= Lezione 07

== Metodi iterativi per sistemi lineari

Sia $A$ una matrice quadrata di ordine $n$. Il numero $lambda in CC$ è detto autovalore di $A$ se esiste un vettore $v in CC^n bar.v v eq.not 0$ tale che $ A v = lambda v . $

Il vettore è detto autovettore associato all'autovalore $lambda$. L'insieme $sigma(A)$ degli autovalori di $A$ è detto spettro di $A$.

Proposizione: l'autovalore $lambda$ è soluzione dell'equazione caratteristica $ p_A (lambda) := det(A - lambda I) = 0 , $ dove $p_A (lambda)$ è detto polinomio caratteristico.

Dal teorema fondamentale dell'algebra segue che una matrice di ordine $n$ ha $n$ autovalori.

Vediamo alcune proprietà:
- una matrice è singolare se e solo se ha almeno un autovalore nullo;
- $A$ è simmetrica definita positiva allora gli autovalori di $A$ sono tutti positivi;
- siano $lambda_i (A), i = 1, dots, n$ gli autovalori della matrice $A in RR^(n times n)$, allora $ det(A) = product_(i=1)^n lambda_i (A) . $
- $trace(A) := sum_(i=1)^n a_(i i) = sum_(i=1)^n lambda_i (A)$, con $trace(A)$ traccia di $A$.

Sia $A$ una matrice quadrata di ordine $n$, si chiama raggio spettrale di $A$ ($rho(A)$) il massimo valore assoluto degli autovalori di $A$, ovvero $ rho(A) := max_(i = 1, dots, n) abs(lambda_i (A)) . $

Proposizione: sia $A$ una matrice quadrata di ordine $n$, allora $ norm(A)_2 = sqrt(rho(A^T A)) . $

Siano $A$ una matrice quadrata di ordine $n$ non singolare e $norm(dot)$ una generica norma di matrice; si chiama numero di condizionamento della matrice $A$, e si indica con $K(A)$, la quantità scalare $ K(A) = norm(A) dot norm(A^(-1)) . $

Una matrice $A$ si dice sparsa se ha un numero elevato di elementi $a_(i j) = 0$. Comunemente, una matrice quadrata di ordine $n$ è ritenuta sparsa quando il numero di elementi diversi da zero è di ordine $O(n)$.

Può capitare che la fattorizzazione LU o la fattorizzazione di Cholesky di una matrice sparsa $A$ generino due matrici piene. Questo fenomeno è detto fill in (riempimento). Questo è un problema se le matrici sono di grandi dimensioni, rendendo la risoluzione del sistema lineare inefficiente.

Per matrici sparse di grandi dimensioni i metodi iterativi possono essere più efficienti dei metodi diretti.

Un *metodo iterativo* per la risoluzione del sistema lineare $A x = b$ consiste nel costruire una successione di vettori $x^((k)) in RR^n, k gt.eq 0$ con la speranza che $ lim_(k arrow infinity) x^((k)) = x , $ a partire da un vettore iniziale $x^((0))$ dato.

In generale, un metodo iterativo per la risoluzione del sistema lineare $A x = b$ ha la forma $ x^((k+1)) = B x^((k)) + g $ con $B in RR^(n times n)$ è detta matrice di iterazione e $g in RR^n$.

Teorema: un metodo iterativo nella forma descritta è convergente, cioè $lim_(k arrow infinity) x^((k)) = x$, se e solo se $ rho(B) < 1 , $ dove $rho(B)$ è il raggio spettrale della matrice $B$.

=== Metodo di Jacobi

Il metodo di Jacobi isola nell'$i$-esima equazione l'$i$-esima incognita e, a partire da un vettore $x^((0)) in RR^n$, genera i passi successivi $ x_i^((k+1)) = 1 / a_(i i) (b_i - sum_(j = 1 and j eq.not i)^n a_(i j) x_j^((k))), i = 1, dots, n $ per $k gt.eq 0$.

=== Metodo di Gauss-Seidel

Come prima, isoliamo l'$i$-esima incognita nell'$i$-esima equazione e partiamo da un vettore iniziale $x^((0))$. Il metodo di Gauss-Seidel genera tutte le soluzioni $x_i^((k+1))$ utilizzando come vettore di partenza non più quello formato dalle $x_i^((k))$ ma quello formato dai $x_j^((k+1))$ se $j < i$ e $x_t^((k))$ se $t gt.eq i$.

L'iterazione generica del metodo di Gauss-Seidel, dato il sistema lineare $A x  = b$ con $A in RR^(n times n)$ è $ x_i^((k+1)) = 1 / a_(i i) (b_i - sum_(j=1)^(i-1) a_(i j) x_j^((k+1)) - sum_(j=i)^n a_(i j) x_j^((k))) i = 1, dots, n . $

=== Osservazioni

Questi due metodi se inseriamo la condizione $a_(i i) eq.not$ assicuriamo che il metodo si possa costruire.

Non è però garantita la convergenza, quindi non è sempre vero che $ lim_(k arrow infinity) x^((k)) = x . $

=== Verificare la convergenza

Sia $A$ una matrice quadrata di ordine $n$, allora essa è a dominanza diagonale stretta se $ abs(a_(i i)) > sum_(j=1 and j eq.not i)^n abs(a_(i j)) forall i = 1, dots, n . $

Teorema: sia $A in RR^(n times n)$ matrice a dominanza diagonale stretta per righe, allora i metodi di Jacobi e Gauss-Seidel applicati al sistema lineare $A x = b$ sono convergenti.

Teorema: sia $A in RR^(n times n)$ una matrice simmetrica definita positiva, allora il metodo di Gauss-Seidel converge.

=== Test d'arresto

Vediamo qualche esempio. Notiamo che se il numero di condizionamento della matrice $A$ è grande la convergenza è lenta.

==== Test del residuo

Fissata una tolleranza $toll << 1$ arrestiamo il metodo iterativo se $ frac(norm(b - A x^((k))), norm(b)) < toll . $

==== Test dell'incremento

Fissata una tolleranza $toll << 1$ arrestiamo il metodo iterativo se $ frac(norm(x^((k+1)) - x^((k))), norm(x^((k)))) < toll . $
