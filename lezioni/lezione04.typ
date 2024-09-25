#import "alias.typ": *


= Lezione 04

== Sistemi lineari

Un sistema lineare di $m$ equazioni in $n$ incognite $x_1, x_2, dots, x_n$ è un sistema formato da $m$ equazioni lineari in $x_1, x_2, dots, x_n$, ossia $ cases(a_11 x_1 + a_12 x_2 + dots + a_1n x_n = b_1, dots, a_(m 1) x_1 + a_(m 2) x_2 + dots + a_(m n) x_n = b_m) . $

Il vettore $x in RR^n$ tale che $x = (x_i)$ si chiama vettore soluzione. La matrice $A in RR^(m times n)$ tale che $A = (a_(i j))$ si chiama matrice dei coefficienti del sistema. Il vettore $b in RR^m$ tale che $b = (b_i)$ si chiama vettore termine noto. La matrice $M in RR^(m times (n+1))$ tale che $M = (A bar.v b)$, ottenuta accostando alle colonne di $A$ il vettore $b$, si chiama matrice completa del sistema.

In forma compatta, dati la matrice $A in RR^(m times n)$ e il vettore $b in RR^m$, trovare il vettore $x in RR^n$ tale che $ A x = b . $

Abbiamo tre condizioni:
- sistema impossibile: il sistema non ammette soluzioni;
- sistema possibile determinato: il sistema ammette una e una sola soluzione;
- sistema possibile indeterminato: il sistema ammette infinite soluzioni.

Teorema di Cramer: siano $A$ una matrice quadrata di ordine $n$ e $b in RR^n$, allora il sistema lineare $A x = b$ ammette una e una sola soluzione se e solo se $det(A) eq.not 0$.

Se il determinante fosse zero potremmo avere sia sistema impossibile sia sistema determinato possibile.

Teorema di Rouché-Capelli: siano $A$ una matrice $m times n$ e $b in RR^m$, allora il sistema lineare $A x = b$ ammette soluzione se e solo se $rank(A) = rank(A bar.v b)$.

Se $rank(A) = rank(A bar.v b)$ possiamo avere $r = n$ e quindi una e una sola soluzione, altrimenti abbiamo infinite soluzioni.
