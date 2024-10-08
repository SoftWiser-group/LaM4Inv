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
( declare-const x_5 Int )
( declare-const y_0 Int )

( define-fun inv-f( ( x Int )( y Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( x Int )( y Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( x_5 Int )( y_0 Int ) ) Bool
	( and
		( = x x_1 )
		( = x_1 0 )
	)
)

( define-fun trans-f ( ( x Int )( y Int )( x! Int )( y! Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( x_5 Int )( y_0 Int ) ) Bool
	( or
		( and
			( = x_2 x )
			( = x_2 x! )
			( = y y! )
		)
		( and
			( = x_2 x )
			( < x_2 99 )
			( = ( mod y_0 2 ) 0 )
			( = x_3 ( + x_2 10 ) )
			( = x_4 x_3 )
			( = x_4 x! )
			(= y y_0 )
			(= y! y_0 )
		)
		( and
			( = x_2 x )
			( < x_2 99 )
			( not ( = ( mod y_0 2 ) 0 ) )
			( = x_5 ( - x_2 5 ) )
			( = x_4 x_5 )
			( = x_4 x! )
			(= y y_0 )
			(= y! y_0 )
		)
	)
)

( define-fun post-f ( ( x Int )( y Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( x_5 Int )( y_0 Int ) ) Bool
	( or
		( not
			( and
				( = x x_2)
				( = y y_0)
			)
		)
		( not
			( and
				( not ( < x_2 99 ) )
				( not ( = ( mod x_2 2 ) ( mod y_0 2 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f x y x_0 x_1 x_2 x_3 x_4 x_5 y_0  )
		( inv-f x y )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f x y )
			( trans-f x y x! y! x_0 x_1 x_2 x_3 x_4 x_5 y_0 )
		)
		( inv-f x! y! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f x y  )
		( post-f x y x_0 x_1 x_2 x_3 x_4 x_5 y_0 )
	)
))

