(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const k Int )
( declare-const k! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const j_3 Int )
( declare-const k_0 Int )
( declare-const k_1 Int )
( declare-const k_2 Int )

( define-fun inv-f( ( i Int )( j Int )( k Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( k Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( k_0 Int )( k_1 Int )( k_2 Int ) ) Bool
	( and
		( = i i_1 )
		( = j j_1 )
		( = k k_0 )
		( = i_1 1 )
		( = j_1 1 )
		( >= k_0 0 )
		( <= k_0 1 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( k Int )( tmp Int )( i! Int )( j! Int )( k! Int )( tmp! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( k_0 Int )( k_1 Int )( k_2 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = j_2 j )
			( = k_1 k )
			( = i_2 i! )
			( = j_2 j! )
			( = k_1 k! )
			( = i i! )
			( = j j! )
			( = k k! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = j_2 j )
			( = k_1 k )
			( = i_3 ( + i_2 1 ) )
			( = j_3 ( + j_2 k_1 ) )
			( = k_2 ( - k_1 1 ) )
			( = i_3 i! )
			( = j_3 j! )
			( = k_2 k! )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( k Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( k_0 Int )( k_1 Int )( k_2 Int ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = j j_2)
				( = k k_1)
			)
		)
		( not
			( and
				( not ( >= i_2 1 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j k tmp i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 k_0 k_1 k_2  )
		( inv-f i j k tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j k tmp )
			( trans-f i j k tmp i! j! k! tmp! i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 k_0 k_1 k_2 )
		)
		( inv-f i! j! k! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j k tmp  )
		( post-f i j k tmp i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 k_0 k_1 k_2 )
	)
))

