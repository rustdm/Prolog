	
	/*	
	This code determines if the given List is a binary tree of the form [ root [] [] ].
    	*/


tree([]).
tree( [ _, [], [] ] ).
tree( [ _, L1, L2 ]) :- tree( L1 ), tree(L2).
     