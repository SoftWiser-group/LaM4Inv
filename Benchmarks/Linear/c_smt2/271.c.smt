(set-logic LIA)

( declare-const t Int )
( declare-const t! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const t_0 Int )
( declare-const x_0 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )
( declare-const y_3 Int )
( declare-const y_4 Int )

( define-fun inv-f( ( t Int )( x Int )( y Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( t Int )( x Int )( y Int )( tmp Int )( t_0 Int )( x_0 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int ) ) Bool
	( and
		( = t t_0 )
		( = x x_0 )
		( = y y_1 )
		( = y_1 t_0 )
		( not ( = x_0 y_1 ) )
	)
)

( define-fun trans-f ( ( t Int )( x Int )( y Int )( tmp Int )( t! Int )( x! Int )( y! Int )( tmp! Int )( t_0 Int )( x_0 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int ) ) Bool
	( or
		( and
			( = y_2 y )
			( = y_2 y! )
			( = t t! )
			( = x x! )
			( = y y! )
			(= tmp tmp! )
		)
		( and
			( = y_2 y )
			( > x_0 0 )
			( = y_3 ( + y_2 x_0 ) )
			( = y_4 y_3 )
			( = y_4 y! )
			(= t t_0 )
			(= t! t_0 )
			(= x x_0 )
			(= x! x_0 )
			(= tmp tmp! )
		)
		( and
			( = y_2 y )
			( not ( > x_0 0 ) )
			( = y_4 y_2 )
			( = y_4 y! )
			(= t t_0 )
			(= t! t_0 )
			(= x x_0 )
			(= x! x_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( t Int )( x Int )( y Int )( tmp Int )( t_0 Int )( x_0 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int ) ) Bool
	( or
		( not
			( and
				( = t t_0)
				( = x x_0)
				( = y y_2)
			)
		)
		( not
			( and
				( not ( >= y_2 t_0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f t x y tmp t_0 x_0 y_0 y_1 y_2 y_3 y_4  )
		( inv-f t x y tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f t x y tmp )
			( trans-f t x y tmp t! x! y! tmp! t_0 x_0 y_0 y_1 y_2 y_3 y_4 )
		)
		( inv-f t! x! y! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f t x y tmp  )
		( post-f t x y tmp t_0 x_0 y_0 y_1 y_2 y_3 y_4 )
	)
))

