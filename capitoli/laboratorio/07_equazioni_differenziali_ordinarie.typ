// Setup


// Capitolo

= Equazioni differenziali ordinarie

Con la funzione *`[T,U] = ode45(f,[a,b],y0)`* possiamo approssimare un problema di Cauchy nell'intervallo $[a,b]$ con condizione iniziale $y_0$ campionandolo in una serie di tempi $T$. Questi tempi sono ritornati assieme ai valori risultati dal campionamento $U$.

Conosciamo anche una serie di metodi utili per l'approssimazione di questi problemi di Cauchy.

#table(
  columns: (33%, 33%, 33%),
  align: center + horizon,
  inset: 10pt,
  [*Metodo*], [*Ordine di convergenza*], [*Caratteristiche*],
  [*Eulero esplicito*], [$1$], [Convergente, assolutamente instabile per step $h$ non sufficientemente piccoli],
  [*Eulero implicito*], [$1$], [Può essere non convergente, assolutamente stabile],
  [*Heun*], [$2$], [Convergente, assolutamente instabile],
  [*Crank-Nicolson*], [$2$], [Può essere non convergente],
)
