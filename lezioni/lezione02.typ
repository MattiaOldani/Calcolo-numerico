= Lezione 02

== Vettori e matrici

#set math.mat(delim: "[")
#set math.vec(delim: "[")

Una tabella di $m times n$ numeri reali disposti in $m$ righe e $n$ colonne del tipo $ A = mat(a_11, dots, a_1n; dots.v, dots.down, dots.v; a_(m 1), dots, a_(m n)) = (a_(i j)) bar.v i = 1, dots, m quad j = 1, dots, n $ si chiama matrice di $m$ righe e $n$ colonne. Ogni elemento $a_(i j)$ ha un indice di riga $i$ e un indice di colonna $j$ che indicano riga e colonna di $A$ in cui si trova quell'elemento.

Indichiamo con $RR^(m times n)$ l'insieme delle matrici $m times n$.

Chiamiamo *vettore colonna* di dimensione $n$ una matrice $n times 1$ formata da $n$ righe e una sola colonna. Analogamente, il *vettore riga* è una matrice di dimensione $1 times n$ formata da una sola riga e $n$ colonne.

AGGIUNTI ESEMPI DI VETTORI COME PRIMA.

Con il termine vettore indicheremo un vettore colonna, e l'insieme dei vettori di dimensione $n$ lo indichiamo con $RR^n$.

Usiamo vettori e matrici per rappresentare molte grandezze fisiche che non possono essere rappresentate come scalari, ma come vettori (tipo spostamento, velocità, accelerazione, eccetera).

Siano $a = (a_i), b = (b_i) in RR^n$ due vettori, si chiama vettore somma il vettore $c = (c_i) in RR^n$ tale che $ c_i = a_i + b_i forall i = 1 dots n . $

Geometricamente parlando, il vettore somma è la diagonale del parallelogramma avente due lati coincidenti con $a$ e $b$ (regola del parallelogramma).

AGGIUNGI IMMAGINE CARINA.

La somma di vettori gode di alcune proprietà:
- *commutativa*: $forall a,b in RR^n quad a + b = b + a$;
- *associativa*: $forall a,b,c in RR^n quad (a + b) + c = a + (b + c)$;
- *esistenza del neutro*: il vettore $0 = vec(0, dots.v, 0)$ è l'elemento neutro della somma, cioè $forall a in RR^n quad a + 0 = 0 + a = a$;
- *esistenza dell'opposto*: per ogni vettore $a in RR^n$ esiste un altro vettore $b in RR^n$ tale che $a + b = 0$; tale vettore $b$ viene detto vettore opposto di $a$ e si indica con $-a$.

Siano $a = (a_i) in RR^n$ un vettore e $beta in RR$ uno scalare. Si chiama prodotto vettore-scalare il vettore $c = (c_i) in RR^n$ tale che $ c_i = beta a_i forall i = 1, dots, n . $

Valgono le due proprietà distributive:
- $forall alpha in RR quad forall a,b in RR^n quad alpha (a + b) = alpha a + alpha b$;
- $forall alpha, beta in RR quad forall a in RR^n quad (alpha + beta) a = alpha a + beta a$.

Siano $a = (a_i), b = (b_i) in RR^n$ due vettori; si chiama prodotto scalare lo scalare $c = a dot b in RR$ tale che $ c = a dot b = sum_(i=1)^n a_i b_i = a_1 b_1 + dots + a_n b_n . $

Diciamo che l'applicazione $ norm(dot) : RR^n arrow.long RR^+ union {0} $ è una norma vettoriale se valgono le seguenti condizioni:
+ $norm(x) gt.eq 0 forall x in RR^n$ e $norm(x) = 0$ se e solo se $x = 0$;
+ $norm(alpha x) = abs(alpha) norm(x) forall alpha in RR quad forall x in RR^n$;
+ $norm(x + y) lt.eq norm(x) + norm(y) forall x,y in RR^n$.

Le norme più famose sono quella euclidea (detta norma 2) tale che $ norm(x)_2 = (sum_(i=1)^n abs(x_i)^2 )^(1/2) forall x in RR^n $ oppure la norma 1 tale che $ norm(x)_1 = sum_(i=1)^n abs(x_i) forall x in RR^n $ oppure la norma $infinity$ (norma del massimo) tale che $ norm(x)_infinity = max_(1 lt.eq i lt.eq n) abs(x_i) forall x in RR^n . $

Una matrice si dice quadrata (di ordine $n$) se $m = n$. Una matrice quadrata è triangolare superiore (inferiore) se $ a_(i j) = 0 bar.v i > j (i < j) , $ cioè se sono nulli gli elementi al di sotto (sopra) della diagonale principale $a_(i i)$.

Se valgono entrambe le definizioni la matrice è detta diagonale.

Data la matrice $A = (a_(i j)) in RR^(m times n)$ si chiama matrice trasposta la matrice $A^T = (a_(i j)^T) in RR^(n times m)$ ottenuta dallo scambio delle righe e delle colonne di $A$, ovvero $ a_(i j) = a_(j i)^T $

Sia $A$ una matrice quadrata di ordine $n$, essa si dice simmetrica se $A = A^T$, ovvero $a_(i j) = a_(j i) forall i,j = 1, dots, n$.

Siano $A = (a_(i j)), B = (b_(i j)) in RR^(m times n)$ due matrici, si chiama matrice somma la matrice $C = (c_(i j)) in RR^(m times n)$ tale che $ c_(i j) = a_(i j) + b_(i j) forall i = 1, dots, m forall j = 1, dots, n . $

Anche la somma di matrici gode di alcune proprietà:
- *commutativa*: $forall A,B in RR^(m times n) quad A + B = B + A$;
- *associativa*: $forall A,B,C in RR^(m times n) quad (A + B) + C = A + (B + C)$;
- *esistenza del neutro*: la matrice $0 = mat(0, dots, 0; dots.v, dots.down, dots.v; 0, dots, 0)$ è l'elemento neutro della somma, cioè $forall A in RR^(m times n) quad A + 0 = 0 + A = A$;
- *esistenza dell'opposto*: per ogni matrice $A in RR^n$ esiste un'altra matrice $B in RR^(m times n)$ tale che $A + B = 0$; tale matrice $B$ viene detta matrice opposta di $A$ e si indica con $-A$.

Siano $A = (a_(i j)) in RR^(m times n)$ una matrice e $beta in RR$ uno scalare. Si chiama prodotto matrice-scalare la matrice $C = (c_(i j)) in RR^(m times n)$ tale che $ c_(i j) = beta a_(i j) forall i = 1, dots, m forall j = 1, dots, n . $

Valgono le due proprietà distributive:
- $forall alpha in RR quad forall A,B in RR^(m times n) quad alpha (A + B) = alpha A + alpha B$;
- $forall alpha, beta in RR quad forall A in RR^(m times n) quad (alpha + beta) A = alpha A + beta A$.

Sia $A = (a_(i j)) in RR^(m times n)$ una matrice e $b = (b_i) in RR^n$ un vettore; si chiama prodotto matrice-vettore di $A$ per $b$ il vettore $c = (c_i) in RR^m$ tale che $ c_i = sum_(j=1)^n a_(i j) b_j = a_(i 1) b_1 + dots + a_(i n) b_n forall i = 1, dots, m . $

Siano $A = (a_(i j)) in RR^(m times n)$ e $B = (b_(i j)) in RR^(n times k)$ due matrici; si chiama prodotto matrice-matrice di $A$ per $B$ la matrice $C = (c_(i j)) in RR^(m times k)$ tale che $ c_(i j) = sum_(t=1)^n a_(i k) b_(k j) = a_(i 1) b_(1 j) + dots + a_(i n) b_(n j) forall i = 1, dots, m forall j = 1, dots, k . $

Il prodotto di matrici in generale non è commutativo, cioè $A dot B eq.not B dot A$.

Si chiama matrice identità di ordine $n$ la matrice quadrata $I = (i_(k j))$ di ordine $n$ tale che $ i_(k j) = cases(1 "se" k = j, 0 "se" k eq.not j) . $

Si può dimostrare che $A dot I = I dot A = A$.

L'applicazione $ norm(dot) : RR^(n times n) arrow.long RR^+ union {0} $ è una norma matriciale se valgono le seguenti condizioni:
+ $norm(A) gt.eq 0 forall A in RR^(n times n)$ e $norm(A)$ se e solo se $A = 0$;
+ $norm(alpha A) = abs(alpha) norm(A) forall alpha in RR forall A in RR^(n times n)$;
+ $norm(A + B) lt.eq norm(A) + norm(B) forall A,B in RR^(n times n)$;
+ $norm(A dot B) lt.eq norm(A) dot norm(B) forall A,B in RR^(n times n)$.

Definiamo la norma matriciale indotta dalla norma vettoriale come $ norm(A) = sup {frac(norm(A_x), norm(x)), forall x in RR^n slash {0}} . $

Abbiamo alcuni casi particolari:
- norma 1 (calcolata colonna per colonna), calcolata come $ norm(A)_1 = max_(1 lt.eq j lt.eq n) sum_(i=1)^n abs(a_(i j)) ; $
- norma $infinity$ (calcolata per riga), calcolata come $ norm(A)_infinity = max_(1 lt.eq i lt.eq n) sum_(j=1)^n abs(a_(i j)) . $
