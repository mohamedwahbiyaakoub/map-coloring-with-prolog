adjacent(1,S):-between(2,3,S).
adjacent(S,1):-between(2,3,S).

adjacent(2,3).
adjacent(3,2).

adjacent(3,S):-between(4,5,S).
adjacent(S,3):-between(4,5,S).

adjacent(5,4).
adjacent(4,5).

conflit(Coloriage):-adjacent(S1,S2),color(S1, Couleur, Coloriage),color(S2, Couleur, Coloriage).

conflit(X,Y,Coloriage):-adjacent(X,Y),color(X, Couleur, Coloriage),color(Y, Couleur,
Coloriage).

color(1,bleu,coloration).
color(2,jaune,coloration).
color(3,vert,coloration).
color(4,jaune,coloration).
color(5,bleu,coloration).
