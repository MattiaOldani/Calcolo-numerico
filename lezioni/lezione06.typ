= Lezione 06

== Metodi diretti per sistemi lineari II

Matrici simmetriche definite positive

Una matrice simmetrica $A in RR^(n times n)$ si dice definita positiva se $ A x dot x gt.eq 0 forall x in RR^n $ e $ A x dot x = 0 arrow.long.double.l.r x = 0 . $

Il criterio di Sylvester afferma che una matrice $A$ simmetrica di ordine $n$ è definita positiva se e solo se $ det(A_k) > 0, k = 1, dots, n $ con $A_k$ sottomatrice principale di ordine $k$ formata dalle prime $k$ righe e colonne.

=== Fattorizzazione di Cholesky

Teorema: sia $A in RR^(n times n)$ simmetrica definita positiva, allora esiste una matrice $R in RR^(n times n)$ triangolare superiore tale che $ A = R^T dot R . $

Tale fattorizzazione della matrice $A$ è detta fattorizzazione di Cholesky.

Con questa trasformiamo il sistema $A x = b$ nel sistema $R^T R x = b$, che andiamo a risolvere in due step:
+ $R^T y = b$ sistema triangolare inferiore;
+ $R x = y$ sistema triangolare superiore.

Cholesky aiuta nel risolvere sistemi triangolare più facili di applicare il MEG tutto insieme. Inoltre, il tempo di calcolo della fattorizzazione è $approx 1/3 n^3$, che è la metà di quella LU ($approx 2/3 n^3$).
