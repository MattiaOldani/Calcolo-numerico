// Setup

#import "../alias.typ": *

#import "@local/typst-theorems:1.0.0": *
#show: thmrules.with(qed-symbol: $square.filled$)

// Capitolo

= Vettori e matrici

== Vettori

#set math.mat(delim: "[")
#set math.vec(delim: "[")

Una tabella di $m times n$ numeri reali disposti in $m$ righe e $n$ colonne del tipo $ A = mat(a_11, dots, a_1n; dots.v, dots.down, dots.v; a_(m 1), dots, a_(m n)) = (a_(i j)) bar.v i = 1, dots, m quad j = 1, dots, n $ si chiama *matrice* di $m$ righe e $n$ colonne. Ogni elemento $a_(i j)$ ha un indice di riga $i$ e un indice di colonna $j$ che indicano, appunto, riga e colonna di $A$ in cui si trova quell'elemento. Indichiamo con $RR^(m times n)$ l'insieme delle matrici $m times n$.

Chiamiamo *vettore colonna* di dimensione $n$ una matrice $n times 1$ formata da $n$ righe e una sola colonna. Analogamente, il *vettore riga* è una matrice di dimensione $1 times n$ formata da una sola riga e $n$ colonne.

Con il termine *vettore* indicheremo un vettore colonna, e l'insieme dei vettori di dimensione $n$ lo indichiamo con $RR^n$.

Usiamo vettori e matrici per rappresentare molte grandezze fisiche che non possono essere rappresentate come scalari, ma come vettori, come spostamento, velocità, accelerazione, eccetera.

=== Operazioni

Siano $a = (a_i), b = (b_i) in RR^n$ due vettori. Chiamiamo *vettore somma* il vettore $c = (c_i) in RR^n$ tale che $ c_i = a_i + b_i forall i = 1 dots n . $

Geometricamente parlando, il vettore somma è la diagonale del parallelogramma avente due lati coincidenti con $a$ e $b$ (_la famosa regola del parallelogramma_).

La somma di vettori gode di alcune proprietà:
- *commutativa*: $forall a,b in RR^n quad a + b = b + a$;
- *associativa*: $forall a,b,c in RR^n quad (a + b) + c = a + (b + c)$;
- *esistenza del neutro*: il vettore $ 0 = vec(0, dots.v, 0) $ è l'*elemento neutro* della somma, cioè $forall a in RR^n quad a + 0 = 0 + a = a$;
- *esistenza dell'opposto*: per ogni vettore $a in RR^n$ esiste un altro vettore $b in RR^n$ tale che $a + b = 0$; tale vettore $b$ viene detto *vettore opposto* di $a$ e si indica con $-a$.

Siano $a = (a_i) in RR^n$ un vettore e $beta in RR$ uno scalare. Chiamiamo *prodotto vettore-scalare* il vettore $c = (c_i) in RR^n$ tale che $ c_i = beta a_i forall i = 1, dots, n . $

Valgono le due proprietà distributive:
- $forall alpha in RR quad forall a,b in RR^n quad alpha (a + b) = alpha a + alpha b$;
- $forall alpha, beta in RR quad forall a in RR^n quad (alpha + beta) a = alpha a + beta a$.

Siano $a = (a_i), b = (b_i) in RR^n$ due vettori. Chiamiamo *prodotto scalare* lo scalare $c = a dot b in RR$ tale che $ c = a dot b = sum_(i=1)^n a_i b_i = a_1 b_1 + dots + a_n b_n . $

Diciamo che l'applicazione $ norm(dot) : RR^n arrow.long RR^+ union {0} $ è una *norma vettoriale* se valgono le seguenti condizioni:
+ $norm(x) gt.eq 0 quad forall x in RR^n$ e $norm(x) = 0$ se e solo se $x = 0$;
+ $norm(alpha x) = abs(alpha) norm(x) quad forall alpha in RR quad forall x in RR^n$;
+ $norm(x + y) lt.eq norm(x) + norm(y) quad forall x,y in RR^n$.

Le norme più famose sono:
- *norma 1*, essa è tale che $ norm(x)_1 = sum_(i=1)^n abs(x_i) quad forall x in RR^n ; $
- *norma euclidea* (_norma 2_), essa è tale che $ norm(x)_2 = (sum_(i=1)^n x_i^2 )^(1/2) quad forall x in RR^n ; $
- *norma* $infinity$ (_norma del massimo_), essa è tale che $ norm(x)_infinity = max_(1 lt.eq i lt.eq n) abs(x_i) quad forall x in RR^n . $

== Matrici

Una matrice si dice *quadrata* di ordine $n$ se $m = n$. Una matrice quadrata è *triangolare superiore* (_inferiore_) se $ a_(i j) = 0 bar.v i > j quad (i < j) , $ cioè se sono nulli gli elementi al di sotto (_sopra_) della diagonale principale $a_(i i)$.

Se valgono entrambe le definizioni di triangolare la matrice è detta *diagonale*.

Data la matrice $A = (a_(i j)) in RR^(m times n)$, chiamiamo *matrice trasposta* la matrice $A^T = (a_(i j)^T) in RR^(n times m)$ ottenuta dallo scambio delle righe e delle colonne di $A$, ovvero $ a_(i j) = a_(j i)^T . $

Sia $A$ una matrice quadrata di ordine $n$, essa si dice *simmetrica* se $A = A^T$, ovvero $a_(i j) = a_(j i) quad forall i,j = 1, dots, n$.

=== Operazioni

Siano $A = (a_(i j)), B = (b_(i j)) in RR^(m times n)$ due matrici. Chiamiamo *matrice somma* la matrice $C = (c_(i j)) in RR^(m times n)$ tale che $ c_(i j) = a_(i j) + b_(i j) quad forall i = 1, dots, m quad forall j = 1, dots, n . $

Anche la somma di matrici gode di alcune proprietà:
- *commutativa*: $forall A,B in RR^(m times n) quad A + B = B + A$;
- *associativa*: $forall A,B,C in RR^(m times n) quad (A + B) + C = A + (B + C)$;
- *esistenza del neutro*: la matrice $ 0 = mat(0, dots, 0; dots.v, dots.down, dots.v; 0, dots, 0) $ è l'*elemento neutro* della somma, cioè $forall A in RR^(m times n) quad A + 0 = 0 + A = A$;
- *esistenza dell'opposto*: per ogni matrice $A in RR^n$ esiste un'altra matrice $B in RR^(m times n)$ tale che $A + B = 0$; tale matrice $B$ viene detta *matrice opposta* di $A$ e si indica con $-A$.

Siano $A = (a_(i j)) in RR^(m times n)$ una matrice e $beta in RR$ uno scalare. Chiamiamo *prodotto matrice-scalare* la matrice $C = (c_(i j)) in RR^(m times n)$ tale che $ c_(i j) = beta a_(i j) quad forall i = 1, dots, m quad forall j = 1, dots, n . $

Valgono le due proprietà distributive:
- $forall alpha in RR quad forall A,B in RR^(m times n) quad alpha (A + B) = alpha A + alpha B$;
- $forall alpha, beta in RR quad forall A in RR^(m times n) quad (alpha + beta) A = alpha A + beta A$.

Sia $A = (a_(i j)) in RR^(m times n)$ una matrice e $b = (b_i) in RR^n$ un vettore. Chiamiamo *prodotto matrice-vettore* di $A$ per $b$ il vettore $c = (c_i) in RR^m$ tale che $ c_i = sum_(j=1)^n a_(i j) b_j = a_(i 1) b_1 + dots + a_(i n) b_n quad forall i = 1, dots, m . $

Siano $A = (a_(i j)) in RR^(m times n)$ e $B = (b_(i j)) in RR^(n times k)$ due matrici. Chiamiamo *prodotto matrice-matrice* di $A$ per $B$ la matrice $C = (c_(i j)) in RR^(m times k)$ tale che $ c_(i j) = sum_(t=1)^n a_(i k) b_(k j) = a_(i 1) b_(1 j) + dots + a_(i n) b_(n j)quad forall i = 1, dots, m quad forall j = 1, dots, k . $

Il prodotto di matrici in generale _non è commutativo_, cioè $A dot B eq.not B dot A$.

Si chiama *matrice identità* di ordine $n$ la matrice quadrata $I = (i_(k j))$ di ordine $n$ tale che $ i_(k j) = cases(1 & "se" k = j, 0 quad & "se" k eq.not j) . $ Si può dimostrare che $A dot I = I dot A = A$.

L'applicazione $ norm(dot) : RR^(n times n) arrow.long RR^+ union {0} $ è una *norma matriciale* se valgono le seguenti condizioni:
+ $norm(A) gt.eq 0 quad forall A in RR^(n times n)$ e $norm(A) = 0$ se e solo se $A = 0$;
+ $norm(alpha A) = abs(alpha) norm(A) quad forall alpha in RR quad forall A in RR^(n times n)$;
+ $norm(A + B) lt.eq norm(A) + norm(B) quad forall A,B in RR^(n times n)$;
+ $norm(A dot B) lt.eq norm(A) dot norm(B) quad forall A,B in RR^(n times n)$.

Definiamo la *norma matriciale indotta* dalla norma vettoriale come la quantità $ norm(A) = sup {frac(norm(A x), norm(x)) quad forall x in RR^n slash {0}} . $

Abbiamo alcune norme particolari:
- *norma 1* (_calcolata colonna per colonna_), essa è tale che $ norm(A)_1 = max_(1 lt.eq j lt.eq n) sum_(i=1)^n abs(a_(i j)) ; $
- *norma* $infinity$ (_calcolata per riga_), essa è tale che $ norm(A)_infinity = max_(1 lt.eq i lt.eq n) sum_(j=1)^n abs(a_(i j)) . $

=== Determinante

Sia $A$ una matrice quadrata di ordine $2$, ovvero $ A = mat(a_11, a_12; a_21, a_22) . $ Si chiama *determinante* di $A$ il numero reale $ det(A) := a_11 a_22 - a_12 a_21 in RR . $

Ora vediamo determinanti per matrici di ordine maggiore.

Siano $A$ matrice quadrata di ordine $n$ e $a_(i j)$ il generico elemento; si chiama *complemento algebrico* di $a_(i j)$ il numero reale $ compl(a_(i j)) := (-1)^(i+j) det(A_(i j)) , $ dove la matrice $A_(i j)$ è la matrice quadrata di ordine $n-1$ ottenuta da $A$ eliminando la riga $i$ e la colonna $j$.

Sia $A$ una matrice quadrata di ordine $n$. Fissata una qualunque riga o colonna di $A$, il determinante di $A$ si ottiene sommando il prodotto di ogni elemento di tale riga o colonna per il suo complemento algebrico.

Il calcolo del determinante è indipendente dalla riga o colonna scelta, quindi conviene fissare la riga o colonna con il maggior numero di zeri.

Il determinante gode di alcune proprietà:
- se $A$ è _triangolare_ allora $det(A) = a_11 a_22 dots a_(n n)$;
- se $A$ ha una riga o una colonna di soli zeri allora $det(A) = 0$;
- se $A$ ha due righe o colonne uguali allora $det(A) = 0$;
- vale il *Teorema di Binet*, ovvero se $A,B$ sono due matrici quadrate dello stesso ordine allora $det(A dot B) = det(A) dot det(B)$.

=== Applicazioni del determinante

Sia $A$ una matrice quadrata di ordine $n$. Si dice che $A$ è *invertibile* se esiste una matrice $A^(-1)$ detta *matrice inversa* di $A$, quadrata di ordine $n$, tale che $A dot A^(-1) = A^(-1) dot A = I_n$.

#theorem([Teorema di invertibilità])[
  Sia $A$ una matrice quadrata di ordine $n$, allora $A$ è invertibile se e solo se $ det(A) eq.not 0 . $
]

#theorem()[
  Sia $A$ una matrice quadrata di ordine due, cioè $ A = mat(a_11, a_12; a_21, a_22) $ e supponiamo $det(A) eq.not 0$. Allora $ A^(-1) = 1/det(A) mat(a_22, -a_12; -a_21, a_11) . $
]

Sia $A$ una matrice $m times n$ e $k in NN$ con $k lt.eq min(m,n)$. Si chiama *minore* di ordine $k$ estratto da $A$ il determinante di una qualunque sottomatrice quadrata di ordine $k$ di $A$, ottenuta prendendo gli elementi comuni a $k$ righe di $k$ colonne di $A$. Si chiama *caratteristica o rango* di $A$ ($rank(A)$) l'ordine massimo dei minori non nulli che si possono estrarre da $A$.

In altre parole, $rank(A) = r$ se esiste un minore di ordine $r$ diverso da zero e se tutti i minori di ordine $r+1$ sono nulli.

Osserviamo due fatti. Sia $A$ una matrice $m times n$ non nulla, allora:
- $rank(A) gt.eq 1$;
- $rank(A) lt.eq min(m,n)$.

In poche parole $ 1 lt.eq rank(A) lt.eq min(m,n) . $
