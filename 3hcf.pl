gcd(X,0,X).
gcd(X,Y,Z):- 
 R is mod(X,Y),
 gcd(Y,R,Z).
lcm(X,Y,LCM):-gcd(X,Y,Z),LCM is X*Y/Z.