(set-logic LIA)

( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )

( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const x_3 Int )
( declare-const x_4 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )
( declare-const y_3 Int )
( declare-const y_4 Int )

( define-fun inv-f( ( x Int )( y Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( x Int )( y Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int ) ) Bool
	( and
		( = x x_0 )
		( = y y_0 )
		( < x_0 y_0 )
		( <= y_0 20000001 )
	)
)

( define-fun trans-f ( ( x Int )( y Int )( x! Int )( y! Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int ) ) Bool
	( or
		( and
			( = x_1 x )
			( = y_1 y )
			( = x_1 x! )
			( = y_1 y! )
		)
		( and
			( = x_1 x )
			( = y_1 y )
			( < x_1 y_1 )
			( < x_1 0 )
			( = x_2 ( + x_1 7 ) )
			( = x_3 x_2 )
			( < y_1 0 )
			( = y_2 ( - y_1 10 ) )
			( = y_3 y_2 )
			( = x_3 x! )
			( = y_3 y! )
		)
		( and
			( = x_1 x )
			( = y_1 y )
			( < x_1 y_1 )
			( < x_1 0 )
			( = x_2 ( + x_1 7 ) )
			( = x_3 x_2 )
			( not ( < y_1 0 ) )
			( = y_4 ( + y_1 3 ) )
			( = y_3 y_4 )
			( = x_3 x! )
			( = y_3 y! )
		)
		( and
			( = x_1 x )
			( = y_1 y )
			( < x_1 y_1 )
			( not ( < x_1 0 ) )
			( = x_4 ( + x_1 10 ) )
			( = x_3 x_4 )
			( < y_1 0 )
			( = y_2 ( - y_1 10 ) )
			( = y_3 y_2 )
			( = x_3 x! )
			( = y_3 y! )
		)
		( and
			( = x_1 x )
			( = y_1 y )
			( < x_1 y_1 )
			( not ( < x_1 0 ) )
			( = x_4 ( + x_1 10 ) )
			( = x_3 x_4 )
			( not ( < y_1 0 ) )
			( = y_4 ( + y_1 3 ) )
			( = y_3 y_4 )
			( = x_3 x! )
			( = y_3 y! )
		)
	)
)

( define-fun post-f ( ( x Int )( y Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int ) ) Bool
	( or
		( not
			( and
				( = x x_1)
				( = y y_1)
			)
		)
		( not
			( and
				( not ( < x_1 y_1 ) )
				( not ( <= x_1 ( + y_1 16 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f x y x_0 x_1 x_2 x_3 x_4 y_0 y_1 y_2 y_3 y_4  )
		( inv-f x y )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f x y )
			( trans-f x y x! y! x_0 x_1 x_2 x_3 x_4 y_0 y_1 y_2 y_3 y_4 )
		)
		( inv-f x! y! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f x y  )
		( post-f x y x_0 x_1 x_2 x_3 x_4 y_0 y_1 y_2 y_3 y_4 )
	)
))

