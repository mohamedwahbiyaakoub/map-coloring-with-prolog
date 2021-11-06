% Le but de ce projet est de cr�er un syst�me expert qui permet
% de v�rifier la validit� de coloration d'un graphe donn�e

% 1er Etape : List exhaustive des regions adjacentes :

% Sommet 1 est adjacent � {2,3,4,5}
% Sommet 2 est adjacent � {1,3,4}
% Sommet 3 est adjacent � {1,2,4}
% Sommet 4 est adjacent � {1,2,3,5}
% Sommet 5 est adjacent � {1,4}

adjacent(1,S):-between(2,5,S).
adjacent(S,1):-between(2,5,S).

adjacent(2,S):-between(3,4,S).
adjacent(S,2):-between(3,4,S).

adjacent(3,4).
adjacent(4,3).

adjacent(5,4).
adjacent(4,5).

% 2�me Etape : R�gles de d�cisions
conflit(Coloriage):-adjacent(S1,S2),color(S1, Couleur, Coloriage),color(S2, Couleur, Coloriage).

conflit(X,Y,Coloriage):-adjacent(X,Y),color(X, Couleur, Coloriage),color(Y, Couleur,
Coloriage).

% 3�me Etape Cr�er des exemples de coloriages possibles :

/* Coloriage n�1 */
color(1,bleu,c1).
color(2,rouge,c1).
color(3,vert,c1).
color(4,jaune,c1).
color(5,rouge,c1).

/* Coloriage n�2 */
color(1,vert,c2).
color(2,rouge,c2).
color(3,vert,c2).
color(4,jaune,c2).
color(5,vert,c2).

/* Coloriage n�3 */
color(1,bleu,c3).
color(2,bleu,c3).
color(3,bleu,c3).
color(4,bleu,c3).
color(5,bleu,c3).

/* Coloriage n�4 */
color(1,bleu,c4).
color(2,rouge,c4).
color(3,vert,c4).
color(4,jaune,c4).
color(5,blanc,c4).

/* Coloriage n�5 */
color(1,bleu,c5).
color(2,rouge,c5).
color(3,rouge,c5).
color(4,jaune,c5).
color(5,rouge,c5).
