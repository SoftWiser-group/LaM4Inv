(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )

( declare-const i_0 Int )
( declare-const j_0 Int )
( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const x_3 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )
( declare-const y_3 Int )

( define-fun inv-f( ( i Int )( j Int )( x Int )( y Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( x Int )( y Int )( i_0 Int )( j_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int ) ) Bool
	( and
		( = i i_0 )
		( = j j_0 )
		( = x x_1 )
		( = y y_1 )
		( = x_1 i_0 )
		( = y_1 j_0 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( x Int )( y Int )( i! Int )( j! Int )( x! Int )( y! Int )( i_0 Int )( j_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int ) ) Bool
	( or
		( and
			( = x_2 x )
			( = y_2 y )
			( = x_2 x! )
			( = y_2 y! )
			( = i i! )
			( = j j! )
			( = y y! )
		)
		( and
			( = x_2 x )
			( = y_2 y )
			( not ( = x_2 0 ) )
			( = x_3 ( - x_2 1 ) )
			( = y_3 ( - y_2 1 ) )
			( = x_3 x! )
			( = y_3 y! )
			(= i i_0 )
			(= i! i_0 )
			(= j j_0 )
			(= j! j_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( x Int )( y Int )( i_0 Int )( j_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int ) ) Bool
	( or
		( not
			( and
				( = i i_0)
				( = j j_0)
				( = x x_2)
				( = y y_2)
			)
		)
		( not
			( and
				( not ( not ( = x_2 0 ) ) )
				( not ( = y_2 0 ) )
				( not ( not ( = i_0 j_0 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j x y i_0 j_0 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3  )
		( inv-f i j x y )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j x y )
			( trans-f i j x y i! j! x! y! i_0 j_0 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 )
		)
		( inv-f i! j! x! y! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j x y  )
		( post-f i j x y i_0 j_0 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 )
	)
))

