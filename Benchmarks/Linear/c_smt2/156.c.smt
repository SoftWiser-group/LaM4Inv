(set-logic LIA)

( declare-const j Int )
( declare-const j! Int )
( declare-const k Int )
( declare-const k! Int )
( declare-const t Int )
( declare-const t! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const j_3 Int )
( declare-const j_4 Int )
( declare-const j_5 Int )
( declare-const k_0 Int )
( declare-const k_1 Int )
( declare-const k_2 Int )
( declare-const k_3 Int )
( declare-const k_4 Int )
( declare-const t_0 Int )

( define-fun inv-f( ( j Int )( k Int )( t Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( j Int )( k Int )( t Int )( tmp Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( j_5 Int )( k_0 Int )( k_1 Int )( k_2 Int )( k_3 Int )( k_4 Int )( t_0 Int ) ) Bool
	( and
		( = j j_1 )
		( = k k_1 )
		( = j_1 2 )
		( = k_1 0 )
	)
)

( define-fun trans-f ( ( j Int )( k Int )( t Int )( tmp Int )( j! Int )( k! Int )( t! Int )( tmp! Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( j_5 Int )( k_0 Int )( k_1 Int )( k_2 Int )( k_3 Int )( k_4 Int )( t_0 Int ) ) Bool
	( or
		( and
			( = j_2 j )
			( = k_2 k )
			( = j_2 j! )
			( = k_2 k! )
			( = j j! )
			( = k k! )
			( = t t! )
			(= tmp tmp! )
		)
		( and
			( = j_2 j )
			( = k_2 k )
			( = t_0 0 )
			( = j_3 ( + j_2 4 ) )
			( = j_4 j_3 )
			( = k_3 k_2 )
			( = j_4 j! )
			( = k_3 k! )
			(= t t_0 )
			(= t! t_0 )
			(= tmp tmp! )
		)
		( and
			( = j_2 j )
			( = k_2 k )
			( not ( = t_0 0 ) )
			( = j_5 ( + j_2 2 ) )
			( = k_4 ( + k_2 1 ) )
			( = j_4 j_5 )
			( = k_3 k_4 )
			( = j_4 j! )
			( = k_3 k! )
			(= t t_0 )
			(= t! t_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( j Int )( k Int )( t Int )( tmp Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( j_5 Int )( k_0 Int )( k_1 Int )( k_2 Int )( k_3 Int )( k_4 Int )( t_0 Int ) ) Bool
	( and
		( or
			( not
				( and
					( = j j_2)
					( = k k_2)
					( = t t_0 )
				)
			)
			( not
				( and
					( not ( = j_2 ( + ( * k_2 2 ) 2 ) ) )
					( = k_2 0 )
					( not ( and ( = k_2 0 ) ( = t_0 0 ) ) )
				)
			)
		)
		( or
			( not
				( and
					( = j j_2)
					( = k k_2)
					( = t t_0 )
				)
			)
			( not
				( and
					( not ( = j_2 ( + ( * k_2 2 ) 2 ) ) )
					( not ( = k_2 0 ) )
					( not ( and ( = k_2 0 ) ( = t_0 0 ) ) )
				)
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f j k t tmp j_0 j_1 j_2 j_3 j_4 j_5 k_0 k_1 k_2 k_3 k_4 t_0  )
		( inv-f j k t tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f j k t tmp )
			( trans-f j k t tmp j! k! t! tmp! j_0 j_1 j_2 j_3 j_4 j_5 k_0 k_1 k_2 k_3 k_4 t_0 )
		)
		( inv-f j! k! t! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f j k t tmp  )
		( post-f j k t tmp j_0 j_1 j_2 j_3 j_4 j_5 k_0 k_1 k_2 k_3 k_4 t_0 )
	)
))

