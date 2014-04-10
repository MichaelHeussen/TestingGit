parent(hanna,john).
parent(peter,john).
parent(klaus,peter).
parent(frank,klaus).
ancestor(X,Y):-parent(X,Y).
ancestor(X,Y):-ancestor(X,Z),ancestor(Z,Y).
ancfast(X,Y):-parent(X,Y).
ancfast(X,Y):-parent(X,Z),ancfast(Z,Y).