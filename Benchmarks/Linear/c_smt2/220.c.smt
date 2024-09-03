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
( declare-const w_1 Int )
( declare-const w_2 Int )
( declare-const w_3 Int )
( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const x_3 Int )
( declare-const x_4 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )
( declare-const y_3 Int )
( declare-const z_0 Int )
( declare-const z_1 Int )
( declare-const z_2 Int )
( declare-const z_3 Int )
( declare-const z_4 Int )

( define-fun inv-f( ( w Int )( x Int )( y Int )( z Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( w Int )( x Int )( y Int )( z Int )( tmp Int )( w_0 Int )( w_1 Int )( w_2 Int )( w_3 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int )( z_4 Int ) ) Bool
	( and
		( = w w_0 )
		( = x x_1 )
		( = y y_0 )
		( = z z_1 )
		( = x_1 w_0 )
		( = z_1 y_0 )
		( > x_1 0 )
		( > y_0 0 )
		( > z_1 0 )
		( > w_0 0 )
	)
)

( define-fun trans-f ( ( w Int )( x Int )( y Int )( z Int )( tmp Int )( w! Int )( x! Int )( y! Int )( z! Int )( tmp! Int )( w_0 Int )( w_1 Int )( w_2 Int )( w_3 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int )( z_4 Int ) ) Bool
	( or
		( and
			( = w_1 w )
			( = x_2 x )
			( = y_1 y )
			( = z_2 z )
			( = w_1 w! )
			( = x_2 x! )
			( = y_1 y! )
			( = z_2 z! )
			( = w w! )
			( = x x! )
			( = y y! )
			( = z z! )
			(= tmp tmp! )
		)
		( and
			( = w_1 w )
			( = x_2 x )
			( = y_1 y )
			( = z_2 z )
			( = w_2 ( + w_1 1 ) )
			( = x_3 ( + x_2 1 ) )
			( = w_3 w_2 )
			( = x_4 x_3 )
			( = y_2 y_1 )
			( = z_3 z_2 )
			( = w_3 w! )
			( = x_4 x! )
			( = y_2 y! )
			( = z_3 z! )
			(= tmp tmp! )
		)
		( and
			( = w_1 w )
			( = x_2 x )
			( = y_1 y )
			( = z_2 z )
			( = y_3 ( - y_1 1 ) )
			( = z_4 ( - z_2 1 ) )
			( = w_3 w_1 )
			( = x_4 x_2 )
			( = y_2 y_3 )
			( = z_3 z_4 )
			( = w_3 w! )
			( = x_4 x! )
			( = y_2 y! )
			( = z_3 z! )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( w Int )( x Int )( y Int )( z Int )( tmp Int )( w_0 Int )( w_1 Int )( w_2 Int )( w_3 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int )( z_4 Int ) ) Bool
	( or
		( not
			( and
				( = w w_1)
				( = x x_2)
				( = y y_1)
				( = z z_2)
			)
		)
		( not
			( and
				( not ( = w_1 x_2 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f w x y z tmp w_0 w_1 w_2 w_3 x_0 x_1 x_2 x_3 x_4 y_0 y_1 y_2 y_3 z_0 z_1 z_2 z_3 z_4  )
		( inv-f w x y z tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f w x y z tmp )
			( trans-f w x y z tmp w! x! y! z! tmp! w_0 w_1 w_2 w_3 x_0 x_1 x_2 x_3 x_4 y_0 y_1 y_2 y_3 z_0 z_1 z_2 z_3 z_4 )
		)
		( inv-f w! x! y! z! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f w x y z tmp  )
		( post-f w x y z tmp w_0 w_1 w_2 w_3 x_0 x_1 x_2 x_3 x_4 y_0 y_1 y_2 y_3 z_0 z_1 z_2 z_3 z_4 )
	)
))

