// Setup


// Capitolo

= Metodi numerici per sistemi di equazioni differenziali ordinarie

Dati $f(dot,dot) : (t_0,T) times RR^n arrow.long RR^n$ e $y_0 in RR^n$, vogliamo trovare $y(dot) : (t_0,T) arrow.long RR^n$ tale che $ cases(frac(d y(t), d t) = f(t, y(t)) quad t in (t_0,T), y(t_0) = y^0) , $ con $ f(t, y(t)) = mat(f_1 (t, y(t)); dots; f_n (t, y(t))) quad bar.v quad y_0 = mat(y_1^0; dots; y_n^0) quad bar.v quad y(t) = mat(y_1 (t); dots; y_n (t)) . $

== Metodo di Eulero esplicito

Per il *metodo di Eulero esplicito*, siano $u_1^0 = y_1^0, dots, u_n^0 = y_n^0$ e $h > 0$ un passo. Allora $ cases(u_1^(k) = u_1^(k-1) + h f_1(t_(k-1), u_1^(k-1), dots, u_n^(k-1)), dots, u_n^k = u_n^(k-1) + h f_n (t_(k-1), u_1^(k-1), dots, u_n^(k-1))) quad forall k gt.eq 1 . $

== Metodo di Eulero implicito

Per il *metodo di Eulero implicito*, siano $u_1^0 = y_1^0, dots, u_n^0 = y_n^0$ e $h > 0$ un passo. Allora $ cases(u_1^(k) = u_1^(k-1) + h f_1(t_(k-1), u_1^k, dots, u_n^k), dots, u_n^k = u_n^(k-1) + h f_n (t_(k-1), u_1^k, dots, u_n^k)) quad forall k gt.eq 1 . $

In questo metodo, ad ogni passo temporale per trovare i valori di $u_1^k, dots, u_n^k$ bisogna risolvere in generale un *sistema algebrico non lineare*.
