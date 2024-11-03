= Laboratorio 05

== Autovalori e autovettori

Data una matrice $A$ quadrata di ordine $n$, il numero $lambda in CC$ si dice *autovalore* di $A$ se esiste un vettore non nullo, detto autovettore, tale che $A v = lambda v$. Gli autovalori si calcolano con il comando "eig(M)". Questo comando ritorna anche gli autovettori di ogni autovalore, metti in una matrice.

Con gli autovalori possiamo calcolare il raggio spettrale e anche la norma $2$ con il comando "norm(M)".

== Funzioni

Possiamo definire delle funzioni che hanno sintassi

#align(center)[
  ```
  function [out1, ...] = nomefunzione (in1, ...)
  ...
  return
  ```
]

Un file contiene una sola funzione e il nome "nomefunzione" deve essere il nome del file che contiene tale funzione.

== Jacobi e Gauss-Seidel

Per le matrici, le tolleranze e altro vedere la teoria.

Una matrice quadrata $A$ di ordine $n$ si dice diagonale dominante per righe (colonne) se sulla diagonale in abs ho somma maggiore uguale della somma di tutti gli altri sulla riga (colonna) in abs, ovvero $ abs(a_(i j)) gt.eq sum_(j=1 and j eq.not i)^n abs(a_(i j)) quad ("altro uguale") . $

Se ho maggiore stretto si dice a diagonale dominante in senso forte (_o stretto_).

Condizioni sufficienti per la convergenza:
- $A$ diagonalmente dominante in senso forte $arrow.long.double$ J e GS convergono;
- $A$ simmetrica definita positiva $arrow.long.double$ GS converge.

Condizione necessaria e sufficiente per la convergenza:
- i metodi iterativi convergono $arrow.long.double.l.r$ $rho(B) < 1$.

Abbiamo anche:
- $A$ tridiagonale, J converge $arrow.long.double.l.r$ GS converge.

Per queste matrici, GS è il doppio più veloce di J.
