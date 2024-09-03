(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const t Int )
( declare-const t! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const t_0 Int )
( declare-const x_0 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )

( define-fun inv-f( ( i Int )( t Int )( x Int )( y Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( t Int )( x Int )( y Int )( i_0 Int )( i_1 Int )( t_0 Int )( x_0 Int )( y_0 Int )( y_1 Int )( y_2 Int ) ) Bool
	( and
		( = i i_1 )
		( = t t_0 )
		( = x x_0 )
		( = y y_0 )
		( = i_1 0 )
		( not ( = x_0 y_0 ) )
		( = t_0 y_0 )
	)
)

( define-fun trans-f ( ( i Int )( t Int )( x Int )( y Int )( i! Int )( t! Int )( x! Int )( y! Int )( i_0 Int )( i_1 Int )( t_0 Int )( x_0 Int )( y_0 Int )( y_1 Int )( y_2 Int ) ) Bool
	( or
		( and
			( = y_1 y )
			( = y_1 y! )
			( = x x_0 )
			( = x! x_0 )
			( = i i! )
			( = t t! )
			( = y y! )
		)
		( and
			( = y_1 y )
			( > x_0 0 )
			( = y_2 ( + x_0 y_1 ) )
			( = y_2 y! )
			(= i i_1 )
			(= i! i_1 )
			(= t t_0 )
			(= t! t_0 )
			(= x x_0 )
			(= x! x_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( t Int )( x Int )( y Int )( i_0 Int )( i_1 Int )( t_0 Int )( x_0 Int )( y_0 Int )( y_1 Int )( y_2 Int ) ) Bool
	( or
		( not
			( and
				( = i i_1)
				( = t t_0)
				( = x x_0)
				( = y y_1)
			)
		)
		( not
			( and
				( not ( > x_0 0 ) )
				( not ( >= y_1 t_0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i t x y i_0 i_1 t_0 x_0 y_0 y_1 y_2  )
		( inv-f i t x y )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i t x y )
			( trans-f i t x y i! t! x! y! i_0 i_1 t_0 x_0 y_0 y_1 y_2 )
		)
		( inv-f i! t! x! y! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i t x y  )
		( post-f i t x y i_0 i_1 t_0 x_0 y_0 y_1 y_2 )
	)
))

