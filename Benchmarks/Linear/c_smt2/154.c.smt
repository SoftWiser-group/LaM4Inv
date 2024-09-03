(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const x Int )
( declare-const x! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const j_3 Int )
( declare-const x_0 Int )

( define-fun inv-f( ( i Int )( j Int )( x Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( x Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( x_0 Int ) ) Bool
	( and
		( = i i_1 )
		( = j j_1 )
		( = x x_0 )
		( = j_1 0 )
		( > x_0 0 )
		( = i_1 0 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( x Int )( i! Int )( j! Int )( x! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( x_0 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = j_2 j )
			( = i_2 i! )
			( = j_2 j! )
			( = x x_0 )
			( = x! x_0 )
			( = j j! )
		)
		( and
			( = i_2 i )
			( = j_2 j )
			( < i_2 x_0 )
			( = j_3 ( + j_2 2 ) )
			( = i_3 ( + i_2 1 ) )
			( = i_3 i! )
			( = j_3 j! )
			(= x x_0 )
			(= x! x_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( x Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( x_0 Int ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = j j_2)
				( = x x_0)
			)
		)
		( not
			( and
				( not ( < i_2 x_0 ) )
				( >= i_2 x_0 )
				( not ( = j_2 ( * 2 x_0 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j x i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 x_0  )
		( inv-f i j x )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j x )
			( trans-f i j x i! j! x! i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 x_0 )
		)
		( inv-f i! j! x! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j x  )
		( post-f i j x i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 x_0 )
	)
))

