= Lezione 08

== Metodi iterativi per sistemi lineari II

Vediamo un po' di matrici di iterazione.

=== Metodo di Jacobi

Dato il sistema $A x = b$ creiamo le matrici $D,E,F$ tali che:
- $D$ è diagonale e contiene la diagonale di $A$;
- $E$ è triangolare inferiore, contiene gli elementi triangolari inferiori di $A$ cambiati di segno e ha $0$ sulla diagonale;
- $F$ è triangolare superiore, contiene gli elementi triangolari superiori di $A$ cambiati di segno e ha $0$ sulla diagonale;

Notiamo che $A = D - E - F$.

Chiamiamo matrice di iterazione di Jacobi la matrice $ B_j := D^(-1) (E + F) . $ Si può verificare che questo metodo si scrive in forma compatta come $ x^((k+1)) = B_j x^((k)) + D^(-1) b . $ Grazie al teorema di convergenza, questo metodo converge se e solo se $ rho(B_j) < 1 . $

=== Metodo di Gauss-Seidel

Chiamiamo matrice di iterazione di Gauss-Seidel la matrice $ B_(g s) := (D - E)^(-1) F . $ Si può verificare che questo metodo si scrive in forma compatta come $ x^((k+1)) = B_(g s) x^((k)) + (D - E)^(-1) b . $ Grazie al teorema di convergenza, questo metodo converge se e solo se $ rho(B_(g s)) < 1 . $

=== Come calcolare gli autovalori di queste matrici

Si può dimostrare che:
- Jacobi: gli autovalori di $B_j$ sono i $lambda$ tali che $ det(lambda D - E - F) = 0 ; $
- Gauss-Seidel: gli autovalori di $B_(g s)$ sono i $lambda$ tali che $ det(lambda (D - E) - F) = 0 . $
