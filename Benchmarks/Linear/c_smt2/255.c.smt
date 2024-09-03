(set-logic LIA)

( declare-const v Int )
( declare-const v! Int )

( declare-const v_0 Int )
( declare-const v_1 Int )
( declare-const v_2 Int )
( declare-const v_3 Int )

( define-fun inv-f( ( v Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( v Int )( v_0 Int )( v_1 Int )( v_2 Int )( v_3 Int ) ) Bool
	( and
		( = v v_1 )
		( = v_1 1 )
	)
)

( define-fun trans-f ( ( v Int )( v! Int )( v_0 Int )( v_1 Int )( v_2 Int )( v_3 Int ) ) Bool
	( or
		( and
			( = v_2 v )
			( = v_2 v! )
		)
		( and
			( = v_2 v )
			( <= v_2 50 )
			( = v_3 ( + v_2 2 ) )
			( = v_3 v! )
		)
	)
)

( define-fun post-f ( ( v Int )( v_0 Int )( v_1 Int )( v_2 Int )( v_3 Int ) ) Bool
	( or
		( not
			( = v v_2)
		)
		( not
			( and
				( not ( <= v_2 50 ) )
				( not ( <= v_2 52 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f v v_0 v_1 v_2 v_3  )
		( inv-f v )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f v )
			( trans-f v v! v_0 v_1 v_2 v_3 )
		)
		( inv-f v! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f v  )
		( post-f v v_0 v_1 v_2 v_3 )
	)
))

