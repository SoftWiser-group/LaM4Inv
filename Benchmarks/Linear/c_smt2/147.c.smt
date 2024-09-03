(set-logic LIA)

( declare-const x Int )
( declare-const x! Int )
( declare-const xa Int )
( declare-const xa! Int )
( declare-const y Int )
( declare-const y! Int )
( declare-const ya Int )
( declare-const ya! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const xa_0 Int )
( declare-const xa_1 Int )
( declare-const xa_2 Int )
( declare-const xa_3 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )
( declare-const y_3 Int )
( declare-const y_4 Int )
( declare-const ya_0 Int )
( declare-const ya_1 Int )
( declare-const ya_2 Int )
( declare-const ya_3 Int )

( define-fun inv-f( ( x Int )( xa Int )( y Int )( ya Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( x Int )( xa Int )( y Int )( ya Int )( tmp Int )( x_0 Int )( x_1 Int )( x_2 Int )( xa_0 Int )( xa_1 Int )( xa_2 Int )( xa_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int )( ya_0 Int )( ya_1 Int )( ya_2 Int )( ya_3 Int ) ) Bool
	( and
		( = xa xa_1 )
		( = ya ya_1 )
		( = xa_1 0 )
		( = ya_1 0 )
	)
)

( define-fun trans-f ( ( x Int )( xa Int )( y Int )( ya Int )( tmp Int )( x! Int )( xa! Int )( y! Int )( ya! Int )( tmp! Int )( x_0 Int )( x_1 Int )( x_2 Int )( xa_0 Int )( xa_1 Int )( xa_2 Int )( xa_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int )( ya_0 Int )( ya_1 Int )( ya_2 Int )( ya_3 Int ) ) Bool
	( or
		( and
			( = x_1 x )
			( = xa_2 xa )
			( = y_1 y )
			( = ya_2 ya )
			( = x_1 x! )
			( = xa_2 xa! )
			( = y_1 y! )
			( = ya_2 ya! )
			( = x x! )
			( = xa xa! )
			( = y y! )
			( = ya ya! )
			(= tmp tmp! )
		)
		( and
			( = x_1 x )
			( = xa_2 xa )
			( = y_1 y )
			( = ya_2 ya )
			( = x_2 ( + ( + xa_2 ( * ya_2 2 ) ) 1 ) )
			( = y_2 ( + ( - ya_2 ( * xa_2 2 ) ) x_2 ) )
			( = y_3 y_2 )
			( = xa_3 ( - x_2 ( * y_3 2 ) ) )
			( = ya_3 ( + ( * x_2 2 ) y_3 ) )
			( = x_2 x! )
			( = xa_3 xa! )
			( = y_3 y! )
			( = ya_3 ya! )
			(= tmp tmp! )
		)
		( and
			( = x_1 x )
			( = xa_2 xa )
			( = y_1 y )
			( = ya_2 ya )
			( = x_2 ( + ( + xa_2 ( * ya_2 2 ) ) 1 ) )
			( = y_4 ( - ( - ya_2 ( * xa_2 2 ) ) x_2 ) )
			( = y_3 y_4 )
			( = xa_3 ( - x_2 ( * y_3 2 ) ) )
			( = ya_3 ( + ( * x_2 2 ) y_3 ) )
			( = x_2 x! )
			( = xa_3 xa! )
			( = y_3 y! )
			( = ya_3 ya! )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( x Int )( xa Int )( y Int )( ya Int )( tmp Int )( x_0 Int )( x_1 Int )( x_2 Int )( xa_0 Int )( xa_1 Int )( xa_2 Int )( xa_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int )( ya_0 Int )( ya_1 Int )( ya_2 Int )( ya_3 Int ) ) Bool
	( or
		( not
			( and
				( = x x_1)
				( = xa xa_2)
				( = y y_1)
				( = ya ya_2)
			)
		)
		( not
			( and
				( not ( >= ( + xa_2 ( * ya_2 2 ) ) 0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f x xa y ya tmp x_0 x_1 x_2 xa_0 xa_1 xa_2 xa_3 y_0 y_1 y_2 y_3 y_4 ya_0 ya_1 ya_2 ya_3  )
		( inv-f x xa y ya tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f x xa y ya tmp )
			( trans-f x xa y ya tmp x! xa! y! ya! tmp! x_0 x_1 x_2 xa_0 xa_1 xa_2 xa_3 y_0 y_1 y_2 y_3 y_4 ya_0 ya_1 ya_2 ya_3 )
		)
		( inv-f x! xa! y! ya! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f x xa y ya tmp  )
		( post-f x xa y ya tmp x_0 x_1 x_2 xa_0 xa_1 xa_2 xa_3 y_0 y_1 y_2 y_3 y_4 ya_0 ya_1 ya_2 ya_3 )
	)
))

