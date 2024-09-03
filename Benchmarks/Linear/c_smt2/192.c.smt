(set-logic LIA)

( declare-const b Int )
( declare-const b! Int )
( declare-const i Int )
( declare-const i! Int )
( declare-const n Int )
( declare-const n! Int )

( declare-const b_0 Int )
( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const n_0 Int )

( define-fun inv-f( ( b Int )( i Int )( n Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( b Int )( i Int )( n Int )( b_0 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( n_0 Int ) ) Bool
	( and
		( = i i_1 )
		( = n n_0 )
		( = i_1 0 )
		( < i_1 n_0 )
	)
)

( define-fun trans-f ( ( b Int )( i Int )( n Int )( b! Int )( i! Int )( n! Int )( b_0 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( n_0 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = i_2 i! )
			( = n n_0 )
			( = n! n_0 )
			( = b b! )
		)
		( and
			( = i_2 i )
			( < i_2 n_0 )
			( not ( = b_0 0 ) )
			( = i_3 ( + i_2 1 ) )
			( = i_3 i! )
			(= b b_0 )
			(= b! b_0 )
			(= n n_0 )
			(= n! n_0 )
		)
		( and
			( < i_2 n_0 )
			( not ( not ( = b_0 0 ) ) )
			(= b b_0 )
			(= b! b_0 )
			(= i i_1 )
			(= i! i_1 )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( b Int )( i Int )( n Int )( b_0 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( n_0 Int ) ) Bool
	( and
		( or
			( not
				( and
					( = b b_0 )
					( = i i_2)
					( = n n_0)
				)
			)
			( not
				( and
					( not ( < i_2 n_0 ) )
					( >= i_2 n_0 )
					( = i_2 n_0 )
					( not ( and ( = i_2 n_0 ) ( not ( = b_0 0 ) ) ) )
				)
			)
		)
		( or
			( not
				( and
					( = b b_0 )
					( = i i_2)
					( = n n_0)
				)
			)
			( not
				( and
					( not ( < i_2 n_0 ) )
					( >= i_2 n_0 )
					( not ( = i_2 n_0 ) )
					( not ( and ( = i_2 n_0 ) ( not ( = b_0 0 ) ) ) )
				)
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f b i n b_0 i_0 i_1 i_2 i_3 n_0  )
		( inv-f b i n )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f b i n )
			( trans-f b i n b! i! n! b_0 i_0 i_1 i_2 i_3 n_0 )
		)
		( inv-f b! i! n! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f b i n  )
		( post-f b i n b_0 i_0 i_1 i_2 i_3 n_0 )
	)
))

