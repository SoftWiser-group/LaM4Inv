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
( declare-const n_0 Int )
( declare-const n_1 Int )
( declare-const n_2 Int )
( declare-const n_3 Int )
( declare-const n_4 Int )

( define-fun inv-f( ( i Int )( k Int )( n Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( k Int )( n Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( k_0 Int )( n_0 Int )( n_1 Int )( n_2 Int )( n_3 Int )( n_4 Int ) ) Bool
	( and
		( = i i_1 )
		( = k k_0 )
		( = n n_1 )
		( = n_1 0 )
		( = i_1 0 )
		( >= k_0 0 )
		( <= k_0 20000001 )
	)
)

( define-fun trans-f ( ( i Int )( k Int )( n Int )( i! Int )( k! Int )( n! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( k_0 Int )( n_0 Int )( n_1 Int )( n_2 Int )( n_3 Int )( n_4 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = n_2 n )
			( = i_2 i! )
			( = n_2 n! )
			( = k k_0 )
			( = k! k_0 )
			( = n n! )
		)
		( and
			( = i_2 i )
			( = n_2 n )
			( < i_2 ( * 2 k_0 ) )
			( = ( mod i_2 2 ) 0 )
			( = n_3 ( + n_2 1 ) )
			( = n_4 n_3 )
			( = i_3 ( + i_2 1 ) )
			( = i_3 i! )
			( = n_4 n! )
			(= k k_0 )
			(= k! k_0 )
		)
		( and
			( = i_2 i )
			( = n_2 n )
			( < i_2 ( * 2 k_0 ) )
			( not ( = ( mod i_2 2 ) 0 ) )
			( = n_4 n_2 )
			( = i_3 ( + i_2 1 ) )
			( = i_3 i! )
			( = n_4 n! )
			(= k k_0 )
			(= k! k_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( k Int )( n Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( k_0 Int )( n_0 Int )( n_1 Int )( n_2 Int )( n_3 Int )( n_4 Int ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = k k_0)
				( = n n_2)
			)
		)
		( not
			( and
				( not ( < i_2 ( * 2 k_0 ) ) )
				( not ( = n_2 k_0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i k n i_0 i_1 i_2 i_3 k_0 n_0 n_1 n_2 n_3 n_4  )
		( inv-f i k n )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i k n )
			( trans-f i k n i! k! n! i_0 i_1 i_2 i_3 k_0 n_0 n_1 n_2 n_3 n_4 )
		)
		( inv-f i! k! n! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i k n  )
		( post-f i k n i_0 i_1 i_2 i_3 k_0 n_0 n_1 n_2 n_3 n_4 )
	)
))

