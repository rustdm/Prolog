	/*
	This solves for the Ackermann function result of A(X, Y, A)
    	Where:
    
    	A(x, y) = {		y + 1  				...  if x = 0, 
        				A( x-1 , 1 )  		...  if y = 0, 
                        A( x-1, A(x, y-1))  ...  otherwise.			}
    	*/

ack(0, Y, A) :- A is Y + 1.
ack(X, 0, A) :- XA is X - 1, ack(XA, 1, ASUB), A is ASUB.
ack(X, Y, A) :- YA is Y - 1, ack(X, YA, ASUB), XA is X - 1, ack(XA, ASUB, A).
