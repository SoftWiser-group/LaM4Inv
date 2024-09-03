(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const k Int )
( declare-const k! Int )
( declare-const n Int )
( declare-const n! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const k_0 Int )
( declare-const k_1 Int )
( declare-const k_2 Int )
( declare-const k_3 Int )
( declare-const n_0 Int )

( define-fun inv-f( ( i Int )( k Int )( n Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( k Int )( n Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( k_0 Int )( k_1 Int )( k_2 Int )( k_3 Int )( n_0 Int ) ) Bool
	( and
		( = i i_1 )
		( = k k_1 )
		( = n n_0 )
		( = i_1 0 )
		( >= n_0 0 )
		( <= n_0 20000001 )
		( = k_1 n_0 )
	)
)

( define-fun trans-f ( ( i Int )( k Int )( n Int )( i! Int )( k! Int )( n! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( k_0 Int )( k_1 Int )( k_2 Int )( k_3 Int )( n_0 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = k_2 k )
			( = i_2 i! )
			( = k_2 k! )
			( = n n_0 )
			( = n! n_0 )
			( = k k! )
		)
		( and
			( = i_2 i )
			( = k_2 k )
			( < i_2 n_0 )
			( = k_3 ( - k_2 1 ) )
			( = i_3 ( + i_2 2 ) )
			( = i_3 i! )
			( = k_3 k! )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( k Int )( n Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( k_0 Int )( k_1 Int )( k_2 Int )( k_3 Int )( n_0 Int ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = k k_2)
				( = n n_0)
			)
		)
		( not
			( and
				( not ( < i_2 n_0 ) )
				( not ( >= ( * 2 k_2 ) ( - n_0 1 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i k n i_0 i_1 i_2 i_3 k_0 k_1 k_2 k_3 n_0  )
		( inv-f i k n )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i k n )
			( trans-f i k n i! k! n! i_0 i_1 i_2 i_3 k_0 k_1 k_2 k_3 n_0 )
		)
		( inv-f i! k! n! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i k n  )
		( post-f i k n i_0 i_1 i_2 i_3 k_0 k_1 k_2 k_3 n_0 )
	)
))

