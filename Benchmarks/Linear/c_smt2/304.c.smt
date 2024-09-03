(set-logic LIA)

( declare-const x Int )
( declare-const x! Int )
( declare-const z Int )
( declare-const z! Int )

( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const x_3 Int )
( declare-const z_0 Int )
( declare-const z_1 Int )
( declare-const z_2 Int )
( declare-const z_3 Int )
( declare-const z_4 Int )

( define-fun inv-f( ( x Int )( z Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( x Int )( z Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int )( z_4 Int ) ) Bool
	( and
		( = x x_1 )
		( = z z_1 )
		( = x_1 0 )
		( = z_1 0 )
	)
)

( define-fun trans-f ( ( x Int )( z Int )( x! Int )( z! Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int )( z_4 Int ) ) Bool
	( or
		( and
			( = x_2 x )
			( = z_2 z )
			( = x_2 x! )
			( = z_2 z! )
			( = z z! )
		)
		( and
			( = x_2 x )
			( = z_2 z )
			( < x_2 10000000 )
			( >= x_2 5000000 )
			( = z_3 ( + z_2 2 ) )
			( = z_4 z_3 )
			( = x_3 ( + x_2 1 ) )
			( = x_3 x! )
			( = z_4 z! )
		)
		( and
			( = x_2 x )
			( = z_2 z )
			( < x_2 10000000 )
			( not ( >= x_2 5000000 ) )
			( = z_4 z_2 )
			( = x_3 ( + x_2 1 ) )
			( = x_3 x! )
			( = z_4 z! )
		)
	)
)

( define-fun post-f ( ( x Int )( z Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int )( z_4 Int ) ) Bool
	( or
		( not
			( and
				( = x x_2)
				( = z z_2)
			)
		)
		( not
			( and
				( not ( < x_2 10000000 ) )
				( not ( = ( mod z_2 2 ) 0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f x z x_0 x_1 x_2 x_3 z_0 z_1 z_2 z_3 z_4  )
		( inv-f x z )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f x z )
			( trans-f x z x! z! x_0 x_1 x_2 x_3 z_0 z_1 z_2 z_3 z_4 )
		)
		( inv-f x! z! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f x z  )
		( post-f x z x_0 x_1 x_2 x_3 z_0 z_1 z_2 z_3 z_4 )
	)
))

