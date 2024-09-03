(set-logic LIA)

( declare-const a Int )
( declare-const a! Int )
( declare-const b Int )
( declare-const b! Int )
( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const a_0 Int )
( declare-const a_1 Int )
( declare-const a_2 Int )
( declare-const a_3 Int )
( declare-const b_0 Int )
( declare-const b_1 Int )
( declare-const b_2 Int )
( declare-const b_3 Int )
( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const j_3 Int )
( declare-const j_4 Int )
( declare-const j_5 Int )

( define-fun inv-f( ( a Int )( b Int )( i Int )( j Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( a Int )( b Int )( i Int )( j Int )( tmp Int )( a_0 Int )( a_1 Int )( a_2 Int )( a_3 Int )( b_0 Int )( b_1 Int )( b_2 Int )( b_3 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( j_5 Int ) ) Bool
	( and
		( = a a_1 )
		( = b b_1 )
		( = i i_1 )
		( = j j_1 )
		( = a_1 0 )
		( = b_1 0 )
		( = j_1 1 )
		( = i_1 0 )
	)
)

( define-fun trans-f ( ( a Int )( b Int )( i Int )( j Int )( tmp Int )( a! Int )( b! Int )( i! Int )( j! Int )( tmp! Int )( a_0 Int )( a_1 Int )( a_2 Int )( a_3 Int )( b_0 Int )( b_1 Int )( b_2 Int )( b_3 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( j_5 Int ) ) Bool
	( or
		( and
			( = a_2 a )
			( = b_2 b )
			( = i_2 i )
			( = j_2 j )
			( = a_2 a! )
			( = b_2 b! )
			( = i_2 i! )
			( = j_2 j! )
			( = a a! )
			( = b b! )
			( = i i! )
			( = j j! )
			(= tmp tmp! )
		)
		( and
			( = a_2 a )
			( = b_2 b )
			( = i_2 i )
			( = j_2 j )
			( = a_3 ( + a_2 1 ) )
			( = b_3 ( - ( + b_2 j_2 ) i_2 ) )
			( = i_3 ( + i_2 2 ) )
			( = ( mod i_3 2 ) 0 )
			( = j_3 ( + j_2 2 ) )
			( = j_4 j_3 )
			( = a_3 a! )
			( = b_3 b! )
			( = i_3 i! )
			( = j_4 j! )
			(= tmp tmp! )
		)
		( and
			( = a_2 a )
			( = b_2 b )
			( = i_2 i )
			( = j_2 j )
			( = a_3 ( + a_2 1 ) )
			( = b_3 ( - ( + b_2 j_2 ) i_2 ) )
			( = i_3 ( + i_2 2 ) )
			( not ( = ( mod i_3 2 ) 0 ) )
			( = j_5 ( + j_2 1 ) )
			( = j_4 j_5 )
			( = a_3 a! )
			( = b_3 b! )
			( = i_3 i! )
			( = j_4 j! )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( a Int )( b Int )( i Int )( j Int )( tmp Int )( a_0 Int )( a_1 Int )( a_2 Int )( a_3 Int )( b_0 Int )( b_1 Int )( b_2 Int )( b_3 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( j_5 Int ) ) Bool
	( or
		( not
			( and
				( = a a_2)
				( = b b_2)
				( = i i_2)
				( = j j_2)
			)
		)
		( not
			( and
				( not ( = a_2 b_2 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f a b i j tmp a_0 a_1 a_2 a_3 b_0 b_1 b_2 b_3 i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 j_4 j_5  )
		( inv-f a b i j tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f a b i j tmp )
			( trans-f a b i j tmp a! b! i! j! tmp! a_0 a_1 a_2 a_3 b_0 b_1 b_2 b_3 i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 j_4 j_5 )
		)
		( inv-f a! b! i! j! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f a b i j tmp  )
		( post-f a b i j tmp a_0 a_1 a_2 a_3 b_0 b_1 b_2 b_3 i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 j_4 j_5 )
	)
))

