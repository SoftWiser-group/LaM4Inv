(set-logic LIA)

( declare-const w Int )
( declare-const w! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )
( declare-const z Int )
( declare-const z! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const w_0 Int )
( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )
( declare-const y_3 Int )
( declare-const z_0 Int )
( declare-const z_1 Int )
( declare-const z_2 Int )
( declare-const z_3 Int )

( define-fun inv-f( ( w Int )( x Int )( y Int )( z Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( w Int )( x Int )( y Int )( z Int )( tmp Int )( w_0 Int )( x_0 Int )( x_1 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int ) ) Bool
	( and
		( = w w_0 )
		( = x x_1 )
		( = y y_1 )
		( = z z_1 )
		( = x_1 w_0 )
		( = z_1 ( + x_1 1 ) )
		( = y_1 ( + w_0 1 ) )
		( > x_1 0 )
		( > y_1 0 )
		( > z_1 0 )
		( > w_0 0 )
	)
)

( define-fun trans-f ( ( w Int )( x Int )( y Int )( z Int )( tmp Int )( w! Int )( x! Int )( y! Int )( z! Int )( tmp! Int )( w_0 Int )( x_0 Int )( x_1 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int ) ) Bool
	( or
		( and
			( = y_2 y )
			( = z_2 z )
			( = y_2 y! )
			( = z_2 z! )
			( = w w! )
			( = x x! )
			( = y y! )
			( = z z! )
			(= tmp tmp! )
		)
		( and
			( = y_2 y )
			( = z_2 z )
			( = y_3 ( + y_2 1 ) )
			( = z_3 ( + z_2 1 ) )
			( = y_3 y! )
			( = z_3 z! )
			(= w w_0 )
			(= w! w_0 )
			(= x x_1 )
			(= x! x_1 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( w Int )( x Int )( y Int )( z Int )( tmp Int )( w_0 Int )( x_0 Int )( x_1 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int ) ) Bool
	( or
		( not
			( and
				( = w w_0)
				( = x x_1)
				( = y y_2)
				( = z z_2)
			)
		)
		( not
			( and
				( not ( = y_2 z_2 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f w x y z tmp w_0 x_0 x_1 y_0 y_1 y_2 y_3 z_0 z_1 z_2 z_3  )
		( inv-f w x y z tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f w x y z tmp )
			( trans-f w x y z tmp w! x! y! z! tmp! w_0 x_0 x_1 y_0 y_1 y_2 y_3 z_0 z_1 z_2 z_3 )
		)
		( inv-f w! x! y! z! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f w x y z tmp  )
		( post-f w x y z tmp w_0 x_0 x_1 y_0 y_1 y_2 y_3 z_0 z_1 z_2 z_3 )
	)
))

