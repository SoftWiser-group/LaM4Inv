(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const l Int )
( declare-const l! Int )
( declare-const n Int )
( declare-const n! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const l_0 Int )
( declare-const n_0 Int )

( define-fun inv-f( ( i Int )( l Int )( n Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( l Int )( n Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( l_0 Int )( n_0 Int ) ) Bool
	( and
		( = i i_1 )
		( = l l_0 )
		( = i_1 l_0 )
		( > l_0 0 )
	)
)

( define-fun trans-f ( ( i Int )( l Int )( n Int )( i! Int )( l! Int )( n! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( l_0 Int )( n_0 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = i_2 i! )
			( = n n_0 )
			( = n! n_0 )
			( = l l! )
		)
		( and
			( = i_2 i )
			( < i_2 n_0 )
			( = i_3 ( + i_2 1 ) )
			( = i_3 i! )
			(= l l_0 )
			(= l! l_0 )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( l Int )( n Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( l_0 Int )( n_0 Int ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = l l_0)
				( = n n_0 )
			)
		)
		( not
			( and
				( not ( < i_2 n_0 ) )
				( not ( >= l_0 1 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i l n i_0 i_1 i_2 i_3 l_0 n_0  )
		( inv-f i l n )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i l n )
			( trans-f i l n i! l! n! i_0 i_1 i_2 i_3 l_0 n_0 )
		)
		( inv-f i! l! n! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i l n  )
		( post-f i l n i_0 i_1 i_2 i_3 l_0 n_0 )
	)
))

