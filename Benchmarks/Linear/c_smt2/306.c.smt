(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const l Int )
( declare-const l! Int )
( declare-const n Int )
( declare-const n! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const i_4 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const j_3 Int )
( declare-const j_4 Int )
( declare-const l_0 Int )
( declare-const l_1 Int )
( declare-const l_2 Int )
( declare-const l_3 Int )
( declare-const n_0 Int )

( define-fun inv-f( ( i Int )( j Int )( l Int )( n Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( l Int )( n Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( l_0 Int )( l_1 Int )( l_2 Int )( l_3 Int )( n_0 Int ) ) Bool
	( and
		( = i i_1 )
		( = j j_1 )
		( = l l_1 )
		( = n n_0 )
		( = i_1 0 )
		( = j_1 0 )
		( = l_1 0 )
		( <= n_0 20000001 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( l Int )( n Int )( i! Int )( j! Int )( l! Int )( n! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( l_0 Int )( l_1 Int )( l_2 Int )( l_3 Int )( n_0 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = j_2 j )
			( = l_2 l )
			( = i_2 i! )
			( = j_2 j! )
			( = l_2 l! )
			( = n n_0 )
			( = n! n_0 )
			( = i i! )
			( = j j! )
		)
		( and
			( = i_2 i )
			( = j_2 j )
			( = l_2 l )
			( < l_2 n_0 )
			( = ( mod l_2 2 ) 0 )
			( = i_3 ( + i_2 1 ) )
			( = i_4 i_3 )
			( = j_3 j_2 )
			( = l_3 ( + l_2 1 ) )
			( = i_4 i! )
			( = j_3 j! )
			( = l_3 l! )
			(= n n_0 )
			(= n! n_0 )
		)
		( and
			( = i_2 i )
			( = j_2 j )
			( = l_2 l )
			( < l_2 n_0 )
			( not ( = ( mod l_2 2 ) 0 ) )
			( = j_4 ( + j_2 1 ) )
			( = i_4 i_2 )
			( = j_3 j_4 )
			( = l_3 ( + l_2 1 ) )
			( = i_4 i! )
			( = j_3 j! )
			( = l_3 l! )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( l Int )( n Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( l_0 Int )( l_1 Int )( l_2 Int )( l_3 Int )( n_0 Int ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = j j_2)
				( = l l_2)
				( = n n_0)
			)
		)
		( not
			( and
				( not ( < l_2 n_0 ) )
				( not ( = ( + i_2 j_2 ) l_2 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j l n i_0 i_1 i_2 i_3 i_4 j_0 j_1 j_2 j_3 j_4 l_0 l_1 l_2 l_3 n_0  )
		( inv-f i j l n )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j l n )
			( trans-f i j l n i! j! l! n! i_0 i_1 i_2 i_3 i_4 j_0 j_1 j_2 j_3 j_4 l_0 l_1 l_2 l_3 n_0 )
		)
		( inv-f i! j! l! n! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j l n  )
		( post-f i j l n i_0 i_1 i_2 i_3 i_4 j_0 j_1 j_2 j_3 j_4 l_0 l_1 l_2 l_3 n_0 )
	)
))

