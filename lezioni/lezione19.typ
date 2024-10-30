= Lezione 19

== Metodi numerici per sistemi di equazioni differenziali ordinarie

Consideriamo il problema di Cauchy $ cases(frac(dif y_1 (t), dif t) = f_1 (t, y_1 (t), y_2 (t)) quad t in (t_0, T), frac(dif y_2 (t), dif t) = f_2 (t, y_1 (t), y_2 (t)) quad t in (t_0, T), y_1 (t_0) = y_1^0, y_2 (t_0) = y_2^0) . $

*Sistemi di equazioni differenziali ordinarie*.

Dati $f(dot,dot) : (t_0,T) times RR^n arrow.long RR^n$ e $y_0 in RR^n$ trovare $y(dot) : (t_0,T) arrow.long RR^n$ tale che $ cases(frac(dif y(t), dif t) = f(t, y(t)) quad t in (t_0,T), y(t_0) = y^0) $ dove $ f(t, y(t)) = mat(f_1 (t, y(t)); dots; f_n (t, y(t))) quad bar.v quad y_0 = mat(y_1^0; dots; y_n^0) quad bar.v quad y(t) = mat(y_1 (t); dots; y_n (t)) . $

Abbiamo *due metodi di Eulero*:
- esplicito: posto $u_1^0 = y_1^0$ e $u_2^0 = y_2^0$ allora $forall n gt.eq 0$ fare $ cases(u_1^(n+1) = u_1^n + h f_1 (t_n u_1^n, u_2^n), u_2^(n+1) = u_2^n + h f_2 (t_n, u_1^n, u_2^n)) ; $
- implicito: posto $u_1^0 = y_1^0$ e $u_2^0 = y_2^0$ allora $forall n gt.eq 0$ fare $ cases(u_1^(n+1) = u_1^n + h f_1 (t_n u_1^(n+1), u_2^(n+1)), u_2^(n+1) = u_2^n + h f_2 (t_n, u_1^(n+1), u_2^(n+1))) . $

Nel caso implicito, ad ogni passo temporale per trovare i valori di $u_1^(n+1)$ e $u_2^(n+1)$ bisogna risolvere in generale un sistema algebrico non lineare.
