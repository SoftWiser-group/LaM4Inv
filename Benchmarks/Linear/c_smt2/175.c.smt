(set-logic LIA)

( declare-const c Int )
( declare-const c! Int )
( declare-const i Int )
( declare-const i! Int )
( declare-const n Int )
( declare-const n! Int )

( declare-const c_0 Int )
( declare-const c_1 Int )
( declare-const c_2 Int )
( declare-const c_3 Int )
( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const n_0 Int )

( define-fun inv-f( ( c Int )( i Int )( n Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( c Int )( i Int )( n Int )( c_0 Int )( c_1 Int )( c_2 Int )( c_3 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( n_0 Int ) ) Bool
	( and
		( = c c_1 )
		( = i i_1 )
		( = n n_0 )
		( = i_1 0 )
		( = c_1 0 )
		( > n_0 0 )
	)
)

( define-fun trans-f ( ( c Int )( i Int )( n Int )( c! Int )( i! Int )( n! Int )( c_0 Int )( c_1 Int )( c_2 Int )( c_3 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( n_0 Int ) ) Bool
	( or
		( and
			( = c_2 c )
			( = i_2 i )
			( = c_2 c! )
			( = i_2 i! )
			( = n n_0 )
			( = n! n_0 )
			( = c c! )
		)
		( and
			( = c_2 c )
			( = i_2 i )
			( < i_2 n_0 )
			( = c_3 ( + c_2 i_2 ) )
			( = i_3 ( + i_2 1 ) )
			( = c_3 c! )
			( = i_3 i! )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( c Int )( i Int )( n Int )( c_0 Int )( c_1 Int )( c_2 Int )( c_3 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( n_0 Int ) ) Bool
	( or
		( not
			( and
				( = c c_2)
				( = i i_2)
				( = n n_0)
			)
		)
		( not
			( and
				( not ( < i_2 n_0 ) )
				( >= i_2 n_0 )
				( not ( >= c_2 0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f c i n c_0 c_1 c_2 c_3 i_0 i_1 i_2 i_3 n_0  )
		( inv-f c i n )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f c i n )
			( trans-f c i n c! i! n! c_0 c_1 c_2 c_3 i_0 i_1 i_2 i_3 n_0 )
		)
		( inv-f c! i! n! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f c i n  )
		( post-f c i n c_0 c_1 c_2 c_3 i_0 i_1 i_2 i_3 n_0 )
	)
))

