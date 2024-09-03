(set-logic LIA)

( declare-const x Int )
( declare-const x! Int )
( declare-const z Int )
( declare-const z! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const x_3 Int )
( declare-const x_4 Int )
( declare-const z_0 Int )
( declare-const z_1 Int )
( declare-const z_2 Int )
( declare-const z_3 Int )

( define-fun inv-f( ( x Int )( z Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( x Int )( z Int )( tmp Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int ) ) Bool
	( and
		( = x x_0 )
		( = z z_0 )
		( > x_0 -100 )
		( < x_0 200 )
		( > z_0 100 )
		( < z_0 200 )
	)
)

( define-fun trans-f ( ( x Int )( z Int )( tmp Int )( x! Int )( z! Int )( tmp! Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int ) ) Bool
	( or
		( and
			( = x_1 x )
			( = z_1 z )
			( = x_1 x! )
			( = z_1 z! )
			( = z z! )
			(= tmp tmp! )
		)
		( and
			( = x_1 x )
			( = z_1 z )
			( < x_1 100 )
			( > z_1 100 )
			( = x_2 ( + x_1 1 ) )
			( = x_3 x_2 )
			( = z_2 z_1 )
			( = x_3 x! )
			( = z_2 z! )
			(= tmp tmp! )
		)
		( and
			( = x_1 x )
			( = z_1 z )
			( < x_1 100 )
			( > z_1 100 )
			( = x_4 ( - x_1 1 ) )
			( = z_3 ( - z_1 1 ) )
			( = x_3 x_4 )
			( = z_2 z_3 )
			( = x_3 x! )
			( = z_2 z! )
			(= tmp tmp! )
		)
		( and
			( < x_1 100 )
			( not ( > z_1 100 ) )
			(= x x_0 )
			(= x! x_0 )
			(= z z_0 )
			(= z! z_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( x Int )( z Int )( tmp Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int ) ) Bool
	( and
		( or
			( not
				( and
					( = x x_1)
					( = z z_1)
				)
			)
			( not
				( and
					( not ( < x_1 100 ) )
					( < x_1 100 )
					( > z_1 100 )
					( not ( or ( or ( and ( < x_1 100 ) ( > z_1 100 ) ) ( >= x_1 100 ) ) ( <= z_1 100 ) ) )
				)
			)
		)
		( or
			( not
				( and
					( = x x_1)
					( = z z_1)
				)
			)
			( not
				( and
					( not ( < x_1 100 ) )
					( < x_1 100 )
					( not ( > z_1 100 ) )
					( >= x_1 100 )
					( not ( or ( or ( and ( < x_1 100 ) ( > z_1 100 ) ) ( >= x_1 100 ) ) ( <= z_1 100 ) ) )
				)
			)
		)
		( or
			( not
				( and
					( = x x_1)
					( = z z_1)
				)
			)
			( not
				( and
					( not ( < x_1 100 ) )
					( < x_1 100 )
					( not ( > z_1 100 ) )
					( not ( >= x_1 100 ) )
					( not ( or ( or ( and ( < x_1 100 ) ( > z_1 100 ) ) ( >= x_1 100 ) ) ( <= z_1 100 ) ) )
				)
			)
		)
		( or
			( not
				( and
					( = x x_1)
					( = z z_1)
				)
			)
			( not
				( and
					( not ( < x_1 100 ) )
					( not ( < x_1 100 ) )
					( >= x_1 100 )
					( not ( or ( or ( and ( < x_1 100 ) ( > z_1 100 ) ) ( >= x_1 100 ) ) ( <= z_1 100 ) ) )
				)
			)
		)
		( or
			( not
				( and
					( = x x_1)
					( = z z_1)
				)
			)
			( not
				( and
					( not ( < x_1 100 ) )
					( not ( < x_1 100 ) )
					( not ( >= x_1 100 ) )
					( not ( or ( or ( and ( < x_1 100 ) ( > z_1 100 ) ) ( >= x_1 100 ) ) ( <= z_1 100 ) ) )
				)
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f x z tmp x_0 x_1 x_2 x_3 x_4 z_0 z_1 z_2 z_3  )
		( inv-f x z tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f x z tmp )
			( trans-f x z tmp x! z! tmp! x_0 x_1 x_2 x_3 x_4 z_0 z_1 z_2 z_3 )
		)
		( inv-f x! z! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f x z tmp  )
		( post-f x z tmp x_0 x_1 x_2 x_3 x_4 z_0 z_1 z_2 z_3 )
	)
))

