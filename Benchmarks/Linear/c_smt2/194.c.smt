(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )
( declare-const z Int )
( declare-const z! Int )

( declare-const i_0 Int )
( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const x_3 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )
( declare-const y_3 Int )
( declare-const z_0 Int )
( declare-const z_1 Int )
( declare-const z_2 Int )
( declare-const z_3 Int )

( define-fun inv-f( ( i Int )( x Int )( y Int )( z Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( x Int )( y Int )( z Int )( i_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int ) ) Bool
	( and
		( = i i_0 )
		( = x x_1 )
		( = y y_1 )
		( = z z_1 )
		( = x_1 i_0 )
		( = y_1 i_0 )
		( = z_1 0 )
		( >= i_0 0 )
	)
)

( define-fun trans-f ( ( i Int )( x Int )( y Int )( z Int )( i! Int )( x! Int )( y! Int )( z! Int )( i_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int ) ) Bool
	( or
		( and
			( = x_2 x )
			( = y_2 y )
			( = z_2 z )
			( = x_2 x! )
			( = y_2 y! )
			( = z_2 z! )
			( = i i! )
			( = y y! )
			( = z z! )
		)
		( and
			( = x_2 x )
			( = y_2 y )
			( = z_2 z )
			( not ( = x_2 0 ) )
			( = x_3 ( - x_2 1 ) )
			( = y_3 ( - y_2 2 ) )
			( = z_3 ( + z_2 1 ) )
			( = x_3 x! )
			( = y_3 y! )
			( = z_3 z! )
			(= i i_0 )
			(= i! i_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( x Int )( y Int )( z Int )( i_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( z_0 Int )( z_1 Int )( z_2 Int )( z_3 Int ) ) Bool
	( or
		( not
			( and
				( = i i_0)
				( = x x_2)
				( = y y_2)
				( = z z_2)
			)
		)
		( not
			( and
				( not ( not ( = x_2 0 ) ) )
				( not ( = y_2 ( - 0 z_2 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i x y z i_0 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 z_0 z_1 z_2 z_3  )
		( inv-f i x y z )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i x y z )
			( trans-f i x y z i! x! y! z! i_0 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 z_0 z_1 z_2 z_3 )
		)
		( inv-f i! x! y! z! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i x y z  )
		( post-f i x y z i_0 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 z_0 z_1 z_2 z_3 )
	)
))

