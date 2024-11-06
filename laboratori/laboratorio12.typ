= Laboratorio 12

Per i problemi di Cauchy abbiamo anche il *metodo di Crank-Nicolson* (_o dei trapezi_), di ordine $2$ che può però non convergere.

Per risolvere invece sistemi di equazioni differenziali ordinarie abbiamo sempre la funzione "ode45(F,[a,b],Y0)" solo che $F$ deve essere un vettore colonna di funzioni note (_devono essere a loro volta vettoriali in y_) e $Y_0$ contiene le condizioni iniziali di ogni equazione.
