mammal(fox).
mammal(whale).
mammal(bat).

bird(pelican).
bird(swan).

reptile(snake).
animal(X):- mammal(X).
animal(X):- reptile(X).
animal(X):- bird(X).