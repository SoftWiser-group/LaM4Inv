(set-logic LIA)

( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )

( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const x_3 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )
( declare-const y_3 Int )
( declare-const y_4 Int )
( declare-const y_5 Int )

( define-fun inv-f( ( x Int )( y Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( x Int )( y Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int )( y_5 Int ) ) Bool
	( and
		( = x x_1 )
		( = y y_1 )
		( = x_1 0 )
		( = y_1 0 )
	)
)

( define-fun trans-f ( ( x Int )( y Int )( x! Int )( y! Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int )( y_5 Int ) ) Bool
	( or
		( and
			( = x_2 x )
			( = y_2 y )
			( = x_2 x! )
			( = y_2 y! )
			( = y y! )
		)
		( and
			( = x_2 x )
			( = y_2 y )
			( < x_2 1000000 )
			( < x_2 500000 )
			( = y_3 ( + y_2 1 ) )
			( = y_4 y_3 )
			( = x_3 ( + x_2 1 ) )
			( = x_3 x! )
			( = y_4 y! )
		)
		( and
			( = x_2 x )
			( = y_2 y )
			( < x_2 1000000 )
			( not ( < x_2 500000 ) )
			( = y_5 ( - y_2 1 ) )
			( = y_4 y_5 )
			( = x_3 ( + x_2 1 ) )
			( = x_3 x! )
			( = y_4 y! )
		)
	)
)

( define-fun post-f ( ( x Int )( y Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int )( y_5 Int ) ) Bool
	( or
		( not
			( and
				( = x x_2)
				( = y y_2)
			)
		)
		( not
			( and
				( not ( < x_2 1000000 ) )
				( not ( = y_2 0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f x y x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 y_4 y_5  )
		( inv-f x y )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f x y )
			( trans-f x y x! y! x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 y_4 y_5 )
		)
		( inv-f x! y! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f x y  )
		( post-f x y x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 y_4 y_5 )
	)
))

