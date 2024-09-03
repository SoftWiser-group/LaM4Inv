(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const r Int )
( declare-const r! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const r_0 Int )

( define-fun inv-f( ( i Int )( j Int )( r Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( r Int )( i_0 Int )( i_1 Int )( i_2 Int )( j_0 Int )( j_1 Int )( j_2 Int )( r_0 Int ) ) Bool
	( and
		( = i i_0 )
		( = j j_0 )
		( = r r_0 )
		( > r_0 ( + i_0 j_0 ) )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( r Int )( i! Int )( j! Int )( r! Int )( i_0 Int )( i_1 Int )( i_2 Int )( j_0 Int )( j_1 Int )( j_2 Int )( r_0 Int ) ) Bool
	( or
		( and
			( = i_1 i )
			( = j_1 j )
			( = i_1 i! )
			( = j_1 j! )
			( = j j! )
			( = r r! )
		)
		( and
			( = i_1 i )
			( = j_1 j )
			( > i_1 0 )
			( = i_2 ( - i_1 1 ) )
			( = j_2 ( + j_1 1 ) )
			( = i_2 i! )
			( = j_2 j! )
			(= r r_0 )
			(= r! r_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( r Int )( i_0 Int )( i_1 Int )( i_2 Int )( j_0 Int )( j_1 Int )( j_2 Int )( r_0 Int ) ) Bool
	( or
		( not
			( and
				( = i i_1)
				( = j j_1)
				( = r r_0)
			)
		)
		( not
			( and
				( not ( > i_1 0 ) )
				( not ( > r_0 ( + i_1 j_1 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j r i_0 i_1 i_2 j_0 j_1 j_2 r_0  )
		( inv-f i j r )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j r )
			( trans-f i j r i! j! r! i_0 i_1 i_2 j_0 j_1 j_2 r_0 )
		)
		( inv-f i! j! r! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j r  )
		( post-f i j r i_0 i_1 i_2 j_0 j_1 j_2 r_0 )
	)
))

