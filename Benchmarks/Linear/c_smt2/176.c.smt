(set-logic LIA)

( declare-const b Int )
( declare-const b! Int )
( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const k Int )
( declare-const k! Int )
( declare-const n Int )
( declare-const n! Int )

( declare-const b_0 Int )
( declare-const b_1 Int )
( declare-const b_2 Int )
( declare-const b_3 Int )
( declare-const b_4 Int )
( declare-const b_5 Int )
( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const j_3 Int )
( declare-const k_0 Int )
( declare-const n_0 Int )
( declare-const n_1 Int )
( declare-const n_2 Int )
( declare-const n_3 Int )

( define-fun inv-f( ( b Int )( i Int )( j Int )( k Int )( n Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( b Int )( i Int )( j Int )( k Int )( n Int )( b_0 Int )( b_1 Int )( b_2 Int )( b_3 Int )( b_4 Int )( b_5 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( k_0 Int )( n_0 Int )( n_1 Int )( n_2 Int )( n_3 Int ) ) Bool
	( and
		( = b b_1 )
		( = i i_0 )
		( = j j_0 )
		( = k k_0 )
		( = n n_1 )
		( = n_1 0 )
		( = b_1 1 )
		( > k_0 0 )
		( < k_0 20000001 )
		( = i_0 j_0 )
	)
)

( define-fun trans-f ( ( b Int )( i Int )( j Int )( k Int )( n Int )( b! Int )( i! Int )( j! Int )( k! Int )( n! Int )( b_0 Int )( b_1 Int )( b_2 Int )( b_3 Int )( b_4 Int )( b_5 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( k_0 Int )( n_0 Int )( n_1 Int )( n_2 Int )( n_3 Int ) ) Bool
	( or
		( and
			( = b_2 b )
			( = i_1 i )
			( = j_1 j )
			( = n_2 n )
			( = b_2 b! )
			( = i_1 i! )
			( = j_1 j! )
			( = n_2 n! )
			( = k k_0 )
			( = k! k_0 )
			( = b b! )
			( = i i! )
			( = j j! )
		)
		( and
			( = b_2 b )
			( = i_1 i )
			( = j_1 j )
			( = n_2 n )
			( < n_2 ( * 2 k_0 ) )
			( = n_3 ( + n_2 1 ) )
			( = b_2 1 )
			( = b_3 0 )
			( = i_2 ( + i_1 1 ) )
			( = b_4 b_3 )
			( = i_3 i_2 )
			( = j_2 j_1 )
			( = b_4 b! )
			( = i_3 i! )
			( = j_2 j! )
			( = n_3 n! )
			(= k k_0 )
			(= k! k_0 )
		)
		( and
			( = b_2 b )
			( = i_1 i )
			( = j_1 j )
			( = n_2 n )
			( < n_2 ( * 2 k_0 ) )
			( = n_3 ( + n_2 1 ) )
			( not ( = b_2 1 ) )
			( = b_5 1 )
			( = j_3 ( + j_1 1 ) )
			( = b_4 b_5 )
			( = i_3 i_1 )
			( = j_2 j_3 )
			( = b_4 b! )
			( = i_3 i! )
			( = j_2 j! )
			( = n_3 n! )
			(= k k_0 )
			(= k! k_0 )
		)
	)
)

( define-fun post-f ( ( b Int )( i Int )( j Int )( k Int )( n Int )( b_0 Int )( b_1 Int )( b_2 Int )( b_3 Int )( b_4 Int )( b_5 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( k_0 Int )( n_0 Int )( n_1 Int )( n_2 Int )( n_3 Int ) ) Bool
	( or
		( not
			( and
				( = b b_2)
				( = i i_1)
				( = j j_1)
				( = k k_0)
				( = n n_2)
			)
		)
		( not
			( and
				( not ( < n_2 ( * 2 k_0 ) ) )
				( >= n_2 ( * 2 k_0 ) )
				( not ( = i_1 j_1 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f b i j k n b_0 b_1 b_2 b_3 b_4 b_5 i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 k_0 n_0 n_1 n_2 n_3  )
		( inv-f b i j k n )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f b i j k n )
			( trans-f b i j k n b! i! j! k! n! b_0 b_1 b_2 b_3 b_4 b_5 i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 k_0 n_0 n_1 n_2 n_3 )
		)
		( inv-f b! i! j! k! n! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f b i j k n  )
		( post-f b i j k n b_0 b_1 b_2 b_3 b_4 b_5 i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 k_0 n_0 n_1 n_2 n_3 )
	)
))

