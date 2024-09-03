(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

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
( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const x_3 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )
( declare-const y_3 Int )

( define-fun inv-f( ( i Int )( j Int )( x Int )( y Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( x Int )( y Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( j_5 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int ) ) Bool
	( and
		( = i i_1 )
		( = j j_1 )
		( = x x_1 )
		( = y y_1 )
		( = i_1 0 )
		( = j_1 0 )
		( = x_1 0 )
		( = y_1 0 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( x Int )( y Int )( tmp Int )( i! Int )( j! Int )( x! Int )( y! Int )( tmp! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( j_5 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = j_2 j )
			( = x_2 x )
			( = y_2 y )
			( = i_2 i! )
			( = j_2 j! )
			( = x_2 x! )
			( = y_2 y! )
			( = i i! )
			( = j j! )
			( = x x! )
			( = y y! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = j_2 j )
			( = x_2 x )
			( = y_2 y )
			( = i_3 ( + ( + i_2 x_2 ) 1 ) )
			( = j_3 ( + ( + j_2 y_2 ) 1 ) )
			( = j_4 j_3 )
			( = x_3 ( + x_2 1 ) )
			( = y_3 ( + y_2 1 ) )
			( = i_3 i! )
			( = j_4 j! )
			( = x_3 x! )
			( = y_3 y! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = j_2 j )
			( = x_2 x )
			( = y_2 y )
			( = i_3 ( + ( + i_2 x_2 ) 1 ) )
			( = j_5 ( + ( + j_2 y_2 ) 2 ) )
			( = j_4 j_5 )
			( = x_3 ( + x_2 1 ) )
			( = y_3 ( + y_2 1 ) )
			( = i_3 i! )
			( = j_4 j! )
			( = x_3 x! )
			( = y_3 y! )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( x Int )( y Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( j_5 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = j j_2)
				( = x x_2)
				( = y y_2)
			)
		)
		( not
			( and
				( not ( >= j_2 i_2 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j x y tmp i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 j_4 j_5 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3  )
		( inv-f i j x y tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j x y tmp )
			( trans-f i j x y tmp i! j! x! y! tmp! i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 j_4 j_5 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 )
		)
		( inv-f i! j! x! y! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j x y tmp  )
		( post-f i j x y tmp i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 j_4 j_5 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 )
	)
))

