= Lezione 03

== Determinante, inversa e rango di matrici

Sia $A$ una matrice quadrata di ordine due, ovvero $ A = mat(a_11, a_12; a_21, a_22) . $ Si chiama determinante di $A$ il numero reale $ det(A) := a_11 a_22 - a_12 a_21 in RR . $

Ora vediamo determinanti per matrici di ordine maggiore.

#let compl(x) = {
  let compop = math.class(
    "unary",
    $"compl"$,
  )
  $compop(#x)$
}

Siano $A$ matrice quadrata di ordine $n$ e $a_(i j)$ il generico elemento; si chiama complemento algebrico di $a_(i j)$ il numero reale $ compl(a_(i j)) := (-1)^(i+j) det(A_(i j)) , $ dove la matrice $A_(i j)$ è la matrice quadrata di ordine $n-1$ ottenuta da $A$ eliminando la riga $i$ e la colonna $j$.

Sia $A$ una matrice quadrata di ordine $n$, fissata una qualunque riga o colonna di $A$, il determinante di $A$ si ottiene sommando il prodotto di ogni elemento di tale riga o colonna per il suo complemento algebrico.

Il calcolo del determinante è indipendente dalla riga o colonna scelta, quindi conviene fissare la riga o colonna con il maggior numero di zeri.

Il determinante gode di alcune proprietà:
- se $A$ è triangolare allora $det(A) = a_11 a_22 dots a_(n n)$;
- se $A$ ha una riga o una colonna di soli zeri allora $det(A) = 0$;
- se $A$ ha due righe o colonne uguali allora $det(A) = 0$;
- vale il Teorema di Binet, ovvero se $A,B$ sono due matrici quadrate dello stesso ordine allora $det(A dot B) = det(A) dot det(B)$.

Sia $A$ una matrice quadrata di ordine $n$, si dice che $A$ è invertibile se esiste una matrice $A^(-1)$ detta matrice inversa di $A$ quadrata di ordine $n$ tale che $A dot A^(-1) = A^(-1) dot A = I_n$.

Teorema: sia $A$ una matrice quadrata di ordine $n$, allora $A$ è invertibile se e solo se $det(A) eq.not 0$.

Teorema: sia $A$ una matrice quadrata di ordine due, cioè $ A = mat(a_11, a_12; a_21, a_22) $ e supponiamo $det(A) eq.not 0$, allora $ A^(-1) = 1/det(A) mat(a_22, -a_12; -a_21, a_11) . $

#let rank(x) = {
  let rankop = math.class(
    "unary",
    $"rk"$,
  )
  $rankop(#x)$
}

Sia $A$ una matrice $m times n$ e $k in NN$ con $k lt.eq min(m,n)$. Si chiama minore di ordine $k$ estratto da $A$ il determinante di una qualunque sottomatrice quadrata di ordine $k$ di $A$, ottenuta prendendo gli elementi comuni a $k$ righe di $k$ colonne di $A$. Si chiama caratteristica o rango di $A$ ($rank(A)$) l'ordine massimo dei minori non nulli che si possono estrarre da $A$.

In altre parole, $rank(A) = r$ se esiste un minore di ordine $r$ diverso da zero e se tutti i minori di ordine $r+1$ sono nulli.

Sia $A$ una matrice non nulla, allora $rank(A) gt.eq 1$. Inoltre, $rank(A) lt.eq min(m,n)$.
