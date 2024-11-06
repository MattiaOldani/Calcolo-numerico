= Laboratorio 11

La funzione "[T,U] = ode45(f,[a,b],y0)" permette di approssimare un problema di Cauchy in un intervallo $[a,b]$ campionandolo nei tempi $T$.

Abbiamo anche dei metodi:
- *metodo di Eulero esplicito*, convergente di ordine $1$ e assolutamente instabile per valori di $h$ non sufficientemente piccoli;
- *metodo di Eulero implicito*, può essere non convergente di ordine $1$ e assolutamente stabile.
- *metodo di Heun*: esplicito convergente di ordine $2$ e assolutamente instabile.
