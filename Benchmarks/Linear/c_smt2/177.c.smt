(set-logic LIA)

( declare-const c Int )
( declare-const c! Int )
( declare-const k Int )
( declare-const k! Int )
( declare-const turn Int )
( declare-const turn! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )
( declare-const z Int )
( declare-const z! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const c_0 Int )
( declare-const c_1 Int )
( declare-const c_2 Int )
( declare-const c_3 Int )
( declare-const c_4 Int )
( declare-const c_5 Int )
( declare-const k_0 Int )
( declare-const turn_0 Int )
( declare-const turn_1 Int )
( declare-const turn_2 Int )
( declare-const turn_3 Int )
( declare-const turn_4 Int )
( declare-const turn_5 Int )
( declare-const turn_6 Int )
( declare-const turn_7 Int )
( declare-const turn_8 Int )
( declare-const turn_9 Int )
( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const x_3 Int )
( declare-const x_4 Int )
( declare-const x_5 Int )
( declare-const x_6 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )
( declare-const y_3 Int )
( declare-const y_4 Int )
( declare-const y_5 Int )
( declare-const y_6 Int )
( declare-const z_0 Int )
( declare-const z_1 Int )
( declare-const z_2 Int )
( declare-const z_3 Int )

( define-fun inv-f( ( c Int )( k Int )( turn Int )( x Int )( y Int )( z Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( c Int )( k Int )( turn Int )( x Int )( y Int )( z Int )( tmp Int )( c_0 Int )( c_1 Int )( c_2 Int )( c_3 Int )( c_4 Int )( c_5 Int )( k_0 Int )( turn_0 Int )( turn_1 Int )( turn_2 Int )( turn_3 Int )( turn_4 Int )( turn_5 Int )( turn_6 Int )( turn_7 Int )( turn_8 Int )( turn_9 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( x_5 Int )( x_6 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int )( y_5 Int )( y_6 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int ) ) Bool
	( and
		( = k k_0 )
		( = turn turn_1 )
		( = x x_1 )
		( = y y_1 )
		( = z z_0 )
		( = x_1 0 )
		( = y_1 0 )
		( = turn_1 0 )
		( = z_0 k_0 )
	)
)

( define-fun trans-f ( ( c Int )( k Int )( turn Int )( x Int )( y Int )( z Int )( tmp Int )( c! Int )( k! Int )( turn! Int )( x! Int )( y! Int )( z! Int )( tmp! Int )( c_0 Int )( c_1 Int )( c_2 Int )( c_3 Int )( c_4 Int )( c_5 Int )( k_0 Int )( turn_0 Int )( turn_1 Int )( turn_2 Int )( turn_3 Int )( turn_4 Int )( turn_5 Int )( turn_6 Int )( turn_7 Int )( turn_8 Int )( turn_9 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( x_5 Int )( x_6 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int )( y_5 Int )( y_6 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int ) ) Bool
	( or
		( and
			( = c_1 c )
			( = turn_2 turn )
			( = x_2 x )
			( = y_2 y )
			( = z_1 z )
			( = c_1 c! )
			( = turn_2 turn! )
			( = x_2 x! )
			( = y_2 y! )
			( = z_1 z! )
			( = c c! )
			( = k k! )
			( = turn turn! )
			( = x x! )
			( = y y! )
			( = z z! )
			(= tmp tmp! )
		)
		( and
			( not ( = x_2 y_2 ) )
			(= c c_0 )
			(= c! c_0 )
			(= k k_0 )
			(= k! k_0 )
			(= turn turn_1 )
			(= turn! turn_1 )
			(= x x_1 )
			(= x! x_1 )
			(= y y_1 )
			(= y! y_1 )
			(= z z_0 )
			(= z! z_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( c Int )( k Int )( turn Int )( x Int )( y Int )( z Int )( tmp Int )( c_0 Int )( c_1 Int )( c_2 Int )( c_3 Int )( c_4 Int )( c_5 Int )( k_0 Int )( turn_0 Int )( turn_1 Int )( turn_2 Int )( turn_3 Int )( turn_4 Int )( turn_5 Int )( turn_6 Int )( turn_7 Int )( turn_8 Int )( turn_9 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( x_5 Int )( x_6 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int )( y_5 Int )( y_6 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int ) ) Bool
	( and
		( or
			( not
				( and
					( = c c_1)
					( = k k_0)
					( = turn turn_2)
					( = x x_2)
					( = y y_2)
					( = z z_1)
				)
			)
			( not
				( and
					( = turn_2 0 )
					( = c_2 0 )
					( = turn_3 1 )
					( = c_3 c_2 )
					( = turn_5 turn_3 )
					( = x_3 x_2 )
					( = y_3 y_2 )
					( = z_2 z_1 )
					( = c_1 c_3 )
					( = turn_2 turn_5 )
					( = x_2 x_3 )
					( = y_2 y_3 )
					( = z_1 z_2 )
					( not ( = x_2 y_2 ) )
				)
			)
		)
		( or
			( not
				( and
					( = c c_1)
					( = k k_0)
					( = turn turn_2)
					( = x x_2)
					( = y y_2)
					( = z z_1)
				)
			)
			( not
				( and
					( = turn_2 0 )
					( = c_2 0 )
					( = turn_4 2 )
					( = c_3 c_2 )
					( = turn_5 turn_4 )
					( = x_3 x_2 )
					( = y_3 y_2 )
					( = z_2 z_1 )
					( = c_1 c_3 )
					( = turn_2 turn_5 )
					( = x_2 x_3 )
					( = y_2 y_3 )
					( = z_1 z_2 )
					( not ( = x_2 y_2 ) )
				)
			)
		)
		( or
			( not
				( and
					( = c c_1)
					( = k k_0)
					( = turn turn_2)
					( = x x_2)
					( = y y_2)
					( = z z_1)
				)
			)
			( not
				( and
					( not ( = turn_2 0 ) )
					( = turn_2 1 )
					( = z_1 ( - ( + k_0 y_2 ) c_1 ) )
					( = y_4 ( + y_2 1 ) )
					( = x_4 ( + x_2 1 ) )
					( = c_4 ( + c_1 1 ) )
					( = turn_6 2 )
					( = c_3 c_4 )
					( = turn_5 turn_6 )
					( = x_3 x_4 )
					( = y_3 y_4 )
					( = z_2 z_1 )
					( = c_1 c_3 )
					( = turn_2 turn_5 )
					( = x_2 x_3 )
					( = y_2 y_3 )
					( = z_1 z_2 )
					( not ( = x_2 y_2 ) )
				)
			)
		)
		( or
			( not
				( and
					( = c c_1)
					( = k k_0)
					( = turn turn_2)
					( = x x_2)
					( = y y_2)
					( = z z_1)
				)
			)
			( not
				( and
					( not ( = turn_2 0 ) )
					( = turn_2 1 )
					( not ( = z_1 ( - ( + k_0 y_2 ) c_1 ) ) )
					( = y_5 ( - y_2 1 ) )
					( = x_5 ( + x_2 1 ) )
					( = c_5 ( + c_1 1 ) )
					( = turn_7 2 )
					( = c_3 c_5 )
					( = turn_5 turn_7 )
					( = x_3 x_5 )
					( = y_3 y_5 )
					( = z_2 z_1 )
					( = c_1 c_3 )
					( = turn_2 turn_5 )
					( = x_2 x_3 )
					( = y_2 y_3 )
					( = z_1 z_2 )
					( not ( = x_2 y_2 ) )
				)
			)
		)
		( or
			( not
				( and
					( = c c_1)
					( = k k_0)
					( = turn turn_2)
					( = x x_2)
					( = y y_2)
					( = z z_1)
				)
			)
			( not
				( and
					( not ( = turn_2 0 ) )
					( = turn_2 1 )
					( not ( = z_1 ( - ( + k_0 y_2 ) c_1 ) ) )
					( = y_5 ( - y_2 1 ) )
					( = x_5 ( + x_2 1 ) )
					( = c_5 ( + c_1 1 ) )
					( = c_3 c_5 )
					( = turn_5 turn_2 )
					( = x_3 x_5 )
					( = y_3 y_5 )
					( = z_2 z_1 )
					( = c_1 c_3 )
					( = turn_2 turn_5 )
					( = x_2 x_3 )
					( = y_2 y_3 )
					( = z_1 z_2 )
					( not ( = x_2 y_2 ) )
				)
			)
		)
		( or
			( not
				( and
					( = c c_1)
					( = k k_0)
					( = turn turn_2)
					( = x x_2)
					( = y y_2)
					( = z z_1)
				)
			)
			( not
				( and
					( not ( = turn_2 0 ) )
					( not ( = turn_2 1 ) )
					( = turn_2 2 )
					( = x_6 ( - x_2 1 ) )
					( = y_6 ( - y_2 1 ) )
					( = turn_8 3 )
					( = c_3 c_1 )
					( = turn_5 turn_8 )
					( = x_3 x_6 )
					( = y_3 y_6 )
					( = z_2 z_1 )
					( = c_1 c_3 )
					( = turn_2 turn_5 )
					( = x_2 x_3 )
					( = y_2 y_3 )
					( = z_1 z_2 )
					( not ( = x_2 y_2 ) )
				)
			)
		)
		( or
			( not
				( and
					( = c c_1)
					( = k k_0)
					( = turn turn_2)
					( = x x_2)
					( = y y_2)
					( = z z_1)
				)
			)
			( not
				( and
					( not ( = turn_2 0 ) )
					( not ( = turn_2 1 ) )
					( = turn_2 2 )
					( = x_6 ( - x_2 1 ) )
					( = y_6 ( - y_2 1 ) )
					( = c_3 c_1 )
					( = turn_5 turn_2 )
					( = x_3 x_6 )
					( = y_3 y_6 )
					( = z_2 z_1 )
					( = c_1 c_3 )
					( = turn_2 turn_5 )
					( = x_2 x_3 )
					( = y_2 y_3 )
					( = z_1 z_2 )
					( not ( = x_2 y_2 ) )
				)
			)
		)
		( or
			( not
				( and
					( = c c_1)
					( = k k_0)
					( = turn turn_2)
					( = x x_2)
					( = y y_2)
					( = z z_1)
				)
			)
			( not
				( and
					( not ( = turn_2 0 ) )
					( not ( = turn_2 1 ) )
					( not ( = turn_2 2 ) )
					( > turn_2 2 )
					( = z_3 ( + x_2 y_2 ) )
					( = turn_9 0 )
					( = c_3 c_1 )
					( = turn_5 turn_9 )
					( = x_3 x_2 )
					( = y_3 y_2 )
					( = z_2 z_3 )
					( = c_1 c_3 )
					( = turn_2 turn_5 )
					( = x_2 x_3 )
					( = y_2 y_3 )
					( = z_1 z_2 )
					( not ( = x_2 y_2 ) )
				)
			)
		)
		( or
			( not
				( and
					( = c c_1)
					( = k k_0)
					( = turn turn_2)
					( = x x_2)
					( = y y_2)
					( = z z_1)
				)
			)
			( not
				( and
					( not ( = turn_2 0 ) )
					( not ( = turn_2 1 ) )
					( not ( = turn_2 2 ) )
					( not ( > turn_2 2 ) )
					( < turn_2 0 )
					( = z_3 ( + x_2 y_2 ) )
					( = turn_9 0 )
					( = c_3 c_1 )
					( = turn_5 turn_9 )
					( = x_3 x_2 )
					( = y_3 y_2 )
					( = z_2 z_3 )
					( = c_1 c_3 )
					( = turn_2 turn_5 )
					( = x_2 x_3 )
					( = y_2 y_3 )
					( = z_1 z_2 )
					( not ( = x_2 y_2 ) )
				)
			)
		)
		( or
			( not
				( and
					( = c c_1)
					( = k k_0)
					( = turn turn_2)
					( = x x_2)
					( = y y_2)
					( = z z_1)
				)
			)
			( not
				( and
					( not ( = turn_2 0 ) )
					( not ( = turn_2 1 ) )
					( not ( = turn_2 2 ) )
					( not ( > turn_2 2 ) )
					( not ( < turn_2 0 ) )
					( = c_3 c_1 )
					( = turn_5 turn_2 )
					( = x_3 x_2 )
					( = y_3 y_2 )
					( = z_2 z_1 )
					( = c_1 c_3 )
					( = turn_2 turn_5 )
					( = x_2 x_3 )
					( = y_2 y_3 )
					( = z_1 z_2 )
					( not ( = x_2 y_2 ) )
				)
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f c k turn x y z tmp c_0 c_1 c_2 c_3 c_4 c_5 k_0 turn_0 turn_1 turn_2 turn_3 turn_4 turn_5 turn_6 turn_7 turn_8 turn_9 x_0 x_1 x_2 x_3 x_4 x_5 x_6 y_0 y_1 y_2 y_3 y_4 y_5 y_6 z_0 z_1 z_2 z_3  )
		( inv-f c k turn x y z tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f c k turn x y z tmp )
			( trans-f c k turn x y z tmp c! k! turn! x! y! z! tmp! c_0 c_1 c_2 c_3 c_4 c_5 k_0 turn_0 turn_1 turn_2 turn_3 turn_4 turn_5 turn_6 turn_7 turn_8 turn_9 x_0 x_1 x_2 x_3 x_4 x_5 x_6 y_0 y_1 y_2 y_3 y_4 y_5 y_6 z_0 z_1 z_2 z_3 )
		)
		( inv-f c! k! turn! x! y! z! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f c k turn x y z tmp  )
		( post-f c k turn x y z tmp c_0 c_1 c_2 c_3 c_4 c_5 k_0 turn_0 turn_1 turn_2 turn_3 turn_4 turn_5 turn_6 turn_7 turn_8 turn_9 x_0 x_1 x_2 x_3 x_4 x_5 x_6 y_0 y_1 y_2 y_3 y_4 y_5 y_6 z_0 z_1 z_2 z_3 )
	)
))

