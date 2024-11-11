// Setup

// Capitolo

= Sistemi lineari

== Metodi diretti

In Matlab possiamo calcolare tramite *eliminazione gaussiana* le soluzioni di un sistema $A x = b$ con la sintassi *`A\b`*. Questo a volte usa la sostituzione in avanti, a volte la sostituzione all'indietro.

Una seconda opzione è la *fattorizzazione LU*, calcolabile con *`[L,U,P] = lu(A)`*. La funzione torna anche una matrice $P$: questo perché non sempre è possibile fattorizzare $A$ nelle matrici $L$ e $U$, quindi utilizziamo una matrice $P$, detta *matrice di permutazione*, da applicare all'intero sistema lineare per permettere poi la fattorizzazione richiesta. Il sistema lineare diventa quindi $P A x = P b$.

Se la matrice $A$ è sparsa vorremmo sapere se *`lu`* abbia nelle stesse posizioni degli zeri. Questo non è possibile in generale, ma sarebbe molto comodo per le computazioni. Questo fenomeno è detto *fill-in*, ovvero si riempiono le celle delle matrici $L$ e $U$ con valori diversi da zero ma nella matrice $A$ abbiamo degli zeri. Le eccezioni a questa regola sono le matrici a banda.

In Matlab, con il comando *`spy(A)`* possiamo graficare le celle della matrice con valori non nulli.

L'ultima fattorizzazione che abbiamo visto è quella di *Cholesky*, calcolabile con *`R = chol(A)`*.

== Metodi iterativi

=== Autovalori e autovettori

Gli *autovalori* di una matrice $A$ si calcolano con la funzione *`[V,D] = eig(A)`*. Questa ritorna anche gli *autovettori* relativi di ogni autovalore. Con gli autovalori possiamo calcolare il *raggio spettrale* e la *norma 2* della matrice $A$ con il comando *`norm(A)`*.

=== Metodo di Jacobi e Gauss-Seidel

Per le matrici di iterazione, le tolleranze e altro vedere la parte di teoria.

*Condizioni sufficienti* per la convergenza:
- $A$ diagonalmente dominante in senso forte $arrow.long.double$ J e GS convergono;
- $A$ simmetrica definita positiva $arrow.long.double$ GS converge.

*Condizione necessaria e sufficiente* per la convergenza:
- I metodi iterativi convergono $arrow.long.double.l.r$ $rho(B) < 1$.
- $A$ tridiagonale, J converge $arrow.long.double.l.r$ GS converge.

Per le matrici tridiagonali, GS è il doppio più veloce di J.
