// Setup

// Capitolo

= Integrazione numerica

Per approssimare una *funzione integrale* in Matlab abbiamo la funzione *`integral(f,a,b)`*. L'area che viene restituita ha:
- un errore assoluto minore di *`1e-10`*;
- un errore relativo minore di *`1e-6`*;
- entrambe le precedenti
rispetto al valore esatto dell'integrale.

== Formule di quadratura

Abbiamo tre *formule di quadratura* per approssimare un integrale:
- *punto medio* (_semplice e composito_);
- *trapezi* (_semplice e composito_);
- *Cavalieri-Simpson* (_semplice e composito_).

La prima e la terza formula sono state date come esercizio in classe. La formula dei trapezi composta è implementata in Matlab con la funzione *`trapz(x,y)`*.

(????) la formula dei trapezi semplice equivale a integrare la retta interpolante della funzione integranda negli estremi dell'intervallo. La formula dei trapezi composita equivale a integrare la spline lineare della funzione integranda nei punti di quadratura. (????)

Per le formule del punto medio e dei trapezi l'errore commesso è $O(H^2)$, mentre per la formula di Cavalieri-Simpson l'errore commesso è $O(H^4)$.
