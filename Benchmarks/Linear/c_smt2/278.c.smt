(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const k Int )
( declare-const k! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const j_0 Int )
( declare-const k_0 Int )
( declare-const k_1 Int )
( declare-const k_2 Int )

( define-fun inv-f( ( i Int )( j Int )( k Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( k Int )( i_0 Int )( i_1 Int )( i_2 Int )( j_0 Int )( k_0 Int )( k_1 Int )( k_2 Int ) ) Bool
	( and
		( = i i_0 )
		( = j j_0 )
		( = k k_0 )
		( > k_0 ( - i_0 j_0 ) )
		( < i_0 j_0 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( k Int )( i! Int )( j! Int )( k! Int )( i_0 Int )( i_1 Int )( i_2 Int )( j_0 Int )( k_0 Int )( k_1 Int )( k_2 Int ) ) Bool
	( or
		( and
			( = i_1 i )
			( = k_1 k )
			( = i_1 i! )
			( = k_1 k! )
			( = j j_0 )
			( = j! j_0 )
			( = k k! )
		)
		( and
			( = i_1 i )
			( = k_1 k )
			( < i_1 j_0 )
			( = k_2 ( + k_1 1 ) )
			( = i_2 ( + i_1 1 ) )
			( = i_2 i! )
			( = k_2 k! )
			(= j j_0 )
			(= j! j_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( k Int )( i_0 Int )( i_1 Int )( i_2 Int )( j_0 Int )( k_0 Int )( k_1 Int )( k_2 Int ) ) Bool
	( or
		( not
			( and
				( = i i_1)
				( = j j_0)
				( = k k_1)
			)
		)
		( not
			( and
				( not ( < i_1 j_0 ) )
				( not ( > k_1 0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j k i_0 i_1 i_2 j_0 k_0 k_1 k_2  )
		( inv-f i j k )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j k )
			( trans-f i j k i! j! k! i_0 i_1 i_2 j_0 k_0 k_1 k_2 )
		)
		( inv-f i! j! k! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j k  )
		( post-f i j k i_0 i_1 i_2 j_0 k_0 k_1 k_2 )
	)
))

