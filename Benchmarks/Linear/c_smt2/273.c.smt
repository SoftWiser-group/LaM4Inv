(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )

( define-fun inv-f( ( i Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( i_0 Int )( i_1 Int )( i_2 Int ) ) Bool
	( and
		( = i i_0 )
		( >= i_0 0 )
		( <= i_0 200 )
	)
)

( define-fun trans-f ( ( i Int )( i! Int )( i_0 Int )( i_1 Int )( i_2 Int ) ) Bool
	( or
		( and
			( = i_1 i )
			( = i_1 i! )
		)
		( and
			( = i_1 i )
			( > i_1 0 )
			( = i_2 ( - i_1 1 ) )
			( = i_2 i! )
		)
	)
)

( define-fun post-f ( ( i Int )( i_0 Int )( i_1 Int )( i_2 Int ) ) Bool
	( or
		( not
			( = i i_1)
		)
		( not
			( and
				( not ( > i_1 0 ) )
				( not ( >= i_1 0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i i_0 i_1 i_2  )
		( inv-f i )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i )
			( trans-f i i! i_0 i_1 i_2 )
		)
		( inv-f i! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i  )
		( post-f i i_0 i_1 i_2 )
	)
))

