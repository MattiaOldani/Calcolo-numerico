= Laboratorio 07

In Matlab non abbiamo degli oggetti per contenere polinomi, ma possiamo rappresentarli come vettori contenenti i coefficienti a partire da quello del grado maggiore (_coefficiente direttivo_) fino a quello del grado minore (_termine noto_).

Possiamo:
- valutare un polinomio in una serie di punti con "polyval(p,points)";
- prodotto e divisione per uno scalare moltiplicando e dividendo il vettore per lo scalare;
- sommare/sottrarre due polinomi con la funzione "polysum(p,q)" scritta da noi; *ATTENZIONE*: possiamo sommarli se hanno la stessa dimensione oppure mettiamo un pad di zeri;
- prodotto di due polinomi con "conv(p,q)";
- divisione di due polinomi (_quoziente e resto_) con "deconv(p,q)";
- derivare un polinomio con "polyder(p)";
- integrare un polinomio con "polyint(p)" e poi calcolare anche gli integrali definiti;
- calcolare le radici di un polinomio con "roots(p)";
- costruire un polinomio a partire dalle sue radici con "poly(r)".
