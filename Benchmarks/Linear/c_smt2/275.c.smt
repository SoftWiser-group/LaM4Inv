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

( define-fun inv-f( ( x Int )( y Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( x Int )( y Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int ) ) Bool
	( or
		( and
			( = x x_0 )
			( = y y_0 )
			( > y_0 0 )
			( or ( > y_0 0 ) ( > x_0 0 ) )
		)
		( and
			( = x x_0 )
			( = y y_0 )
			( not ( > y_0 0 ) )
			( or ( > y_0 0 ) ( > x_0 0 ) )
		)
	)
)

( define-fun trans-f ( ( x Int )( y Int )( x! Int )( y! Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int ) ) Bool
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
			( <= ( + x_1 y_1 ) -2 )
			( > x_1 0 )
			( = x_2 ( + x_1 1 ) )
			( = x_3 x_2 )
			( = y_2 y_1 )
			( = x_3 x! )
			( = y_2 y! )
		)
		( and
			( = x_1 x )
			( = y_1 y )
			( <= ( + x_1 y_1 ) -2 )
			( not ( > x_1 0 ) )
			( = y_3 ( + y_1 1 ) )
			( = x_3 x_1 )
			( = y_2 y_3 )
			( = x_3 x! )
			( = y_2 y! )
		)
	)
)

( define-fun post-f ( ( x Int )( y Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int ) ) Bool
	( and
		( or
			( not
				( and
					( = x x_1)
					( = y y_1)
				)
			)
			( not
				( and
					( not ( <= ( + x_1 y_1 ) -2 ) )
					( > x_1 0 )
					( not ( or ( > x_1 0 ) ( > y_1 0 ) ) )
				)
			)
		)
		( or
			( not
				( and
					( = x x_1)
					( = y y_1)
				)
			)
			( not
				( and
					( not ( <= ( + x_1 y_1 ) -2 ) )
					( not ( > x_1 0 ) )
					( not ( or ( > x_1 0 ) ( > y_1 0 ) ) )
				)
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f x y x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3  )
		( inv-f x y )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f x y )
			( trans-f x y x! y! x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 )
		)
		( inv-f x! y! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f x y  )
		( post-f x y x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 )
	)
))

