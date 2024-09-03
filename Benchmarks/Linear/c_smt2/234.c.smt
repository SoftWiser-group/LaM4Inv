(set-logic LIA)

( declare-const N Int )
( declare-const N! Int )
( declare-const x Int )
( declare-const x! Int )

( declare-const N_0 Int )
( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const x_3 Int )

( define-fun inv-f( ( N Int )( x Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( N Int )( x Int )( N_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int ) ) Bool
	( and
		( = x x_1 )
		( = x_1 0 )
	)
)

( define-fun trans-f ( ( N Int )( x Int )( N! Int )( x! Int )( N_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int ) ) Bool
	( or
		( and
			( = x_2 x )
			( = x_2 x! )
			( = N N_0 )
			( = N! N_0 )
		)
		( and
			( = x_2 x )
			( < x_2 N_0 )
			( = x_3 ( + x_2 2 ) )
			( = x_3 x! )
			(= N N_0 )
			(= N! N_0 )
		)
	)
)

( define-fun post-f ( ( N Int )( x Int )( N_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int ) ) Bool
	( or
		( not
			( and
				( = N N_0 )
				( = x x_2)
			)
		)
		( not
			( and
				( not ( < x_2 N_0 ) )
				( not ( = ( mod x_2 2 ) 0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f N x N_0 x_0 x_1 x_2 x_3  )
		( inv-f N x )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f N x )
			( trans-f N x N! x! N_0 x_0 x_1 x_2 x_3 )
		)
		( inv-f N! x! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f N x  )
		( post-f N x N_0 x_0 x_1 x_2 x_3 )
	)
))

