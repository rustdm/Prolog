
	/*
	This is solves for the Fibonacci number of index N, otherwise it verifies correctness of completed fib() calls,
 	such as fib(3, 2) = true
    	*/


fib(1, 1).
fib(2, 1).
fib(N, FN) :- N1 is N - 1, N2 is N - 2, fib(N1, SUB1), fib(N2, SUB2), FN is SUB1 + SUB2.

