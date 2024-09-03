(set-logic LIA)

( declare-const j Int )
( declare-const j! Int )
( declare-const k Int )
( declare-const k! Int )
( declare-const n Int )
( declare-const n! Int )

( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const j_3 Int )
( declare-const k_0 Int )
( declare-const k_1 Int )
( declare-const k_2 Int )
( declare-const n_0 Int )

( define-fun inv-f( ( j Int )( k Int )( n Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( j Int )( k Int )( n Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( k_0 Int )( k_1 Int )( k_2 Int )( n_0 Int ) ) Bool
	( and
		( = j j_1 )
		( = k k_0 )
		( = n n_0 )
		( = j_1 0 )
		( > n_0 0 )
		( > k_0 n_0 )
	)
)

( define-fun trans-f ( ( j Int )( k Int )( n Int )( j! Int )( k! Int )( n! Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( k_0 Int )( k_1 Int )( k_2 Int )( n_0 Int ) ) Bool
	( or
		( and
			( = j_2 j )
			( = k_1 k )
			( = j_2 j! )
			( = k_1 k! )
			( = n n_0 )
			( = n! n_0 )
			( = k k! )
		)
		( and
			( = j_2 j )
			( = k_1 k )
			( < j_2 n_0 )
			( = j_3 ( + j_2 1 ) )
			( = k_2 ( - k_1 1 ) )
			( = j_3 j! )
			( = k_2 k! )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( j Int )( k Int )( n Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( k_0 Int )( k_1 Int )( k_2 Int )( n_0 Int ) ) Bool
	( or
		( not
			( and
				( = j j_2)
				( = k k_1)
				( = n n_0)
			)
		)
		( not
			( and
				( not ( < j_2 n_0 ) )
				( >= j_2 n_0 )
				( not ( >= k_1 0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f j k n j_0 j_1 j_2 j_3 k_0 k_1 k_2 n_0  )
		( inv-f j k n )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f j k n )
			( trans-f j k n j! k! n! j_0 j_1 j_2 j_3 k_0 k_1 k_2 n_0 )
		)
		( inv-f j! k! n! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f j k n  )
		( post-f j k n j_0 j_1 j_2 j_3 k_0 k_1 k_2 n_0 )
	)
))

