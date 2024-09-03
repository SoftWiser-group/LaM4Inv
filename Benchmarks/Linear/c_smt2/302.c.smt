(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const i_4 Int )
( declare-const i_5 Int )
( declare-const j_0 Int )

( define-fun inv-f( ( i Int )( j Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( i_5 Int )( j_0 Int ) ) Bool
	( and
		( = i i_1 )
		( = i_1 0 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( tmp Int )( i! Int )( j! Int )( tmp! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( i_5 Int )( j_0 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = i_2 i! )
			( = j j! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( < i_2 50000001 )
			( = i_3 ( + i_2 8 ) )
			( = i_4 i_3 )
			( = i_4 i! )
			(= j j_0 )
			(= j! j_0 )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( < i_2 50000001 )
			( = i_5 ( + i_2 4 ) )
			( = i_4 i_5 )
			( = i_4 i! )
			(= j j_0 )
			(= j! j_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( i_5 Int )( j_0 Int ) ) Bool
	( or
		( not
			( = i i_2)
		)
		( not
			( and
				( not ( < i_2 50000001 ) )
				( = j_0 ( / i_2 4 ) )
				( not ( = ( * j_0 4 ) i_2 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j tmp i_0 i_1 i_2 i_3 i_4 i_5 j_0  )
		( inv-f i j tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j tmp )
			( trans-f i j tmp i! j! tmp! i_0 i_1 i_2 i_3 i_4 i_5 j_0 )
		)
		( inv-f i! j! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j tmp  )
		( post-f i j tmp i_0 i_1 i_2 i_3 i_4 i_5 j_0 )
	)
))

