(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const k Int )
( declare-const k! Int )
( declare-const n Int )
( declare-const n! Int )
( declare-const pvlen Int )
( declare-const pvlen! Int )
( declare-const t Int )
( declare-const t! Int )
( declare-const turn Int )
( declare-const turn! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const i_4 Int )
( declare-const i_5 Int )
( declare-const i_6 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const j_3 Int )
( declare-const k_0 Int )
( declare-const k_1 Int )
( declare-const k_2 Int )
( declare-const k_3 Int )
( declare-const k_4 Int )
( declare-const n_0 Int )
( declare-const n_1 Int )
( declare-const n_2 Int )
( declare-const n_3 Int )
( declare-const pvlen_0 Int )
( declare-const pvlen_1 Int )
( declare-const pvlen_2 Int )
( declare-const pvlen_3 Int )
( declare-const pvlen_4 Int )
( declare-const t_0 Int )
( declare-const t_1 Int )
( declare-const t_2 Int )
( declare-const t_3 Int )
( declare-const turn_0 Int )
( declare-const turn_1 Int )
( declare-const turn_2 Int )
( declare-const turn_3 Int )
( declare-const turn_4 Int )
( declare-const turn_5 Int )
( declare-const turn_6 Int )
( declare-const turn_7 Int )
( declare-const turn_8 Int )

( define-fun inv-f( ( i Int )( j Int )( k Int )( n Int )( pvlen Int )( t Int )( turn Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( k Int )( n Int )( pvlen Int )( t Int )( turn Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( i_5 Int )( i_6 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( k_0 Int )( k_1 Int )( k_2 Int )( k_3 Int )( k_4 Int )( n_0 Int )( n_1 Int )( n_2 Int )( n_3 Int )( pvlen_0 Int )( pvlen_1 Int )( pvlen_2 Int )( pvlen_3 Int )( pvlen_4 Int )( t_0 Int )( t_1 Int )( t_2 Int )( t_3 Int )( turn_0 Int )( turn_1 Int )( turn_2 Int )( turn_3 Int )( turn_4 Int )( turn_5 Int )( turn_6 Int )( turn_7 Int )( turn_8 Int ) ) Bool
	( and
		( = i i_1 )
		( = k k_1 )
		( = turn turn_1 )
		( = k_1 0 )
		( = i_1 0 )
		( = turn_1 0 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( k Int )( n Int )( pvlen Int )( t Int )( turn Int )( tmp Int )( i! Int )( j! Int )( k! Int )( n! Int )( pvlen! Int )( t! Int )( turn! Int )( tmp! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( i_5 Int )( i_6 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( k_0 Int )( k_1 Int )( k_2 Int )( k_3 Int )( k_4 Int )( n_0 Int )( n_1 Int )( n_2 Int )( n_3 Int )( pvlen_0 Int )( pvlen_1 Int )( pvlen_2 Int )( pvlen_3 Int )( pvlen_4 Int )( t_0 Int )( t_1 Int )( t_2 Int )( t_3 Int )( turn_0 Int )( turn_1 Int )( turn_2 Int )( turn_3 Int )( turn_4 Int )( turn_5 Int )( turn_6 Int )( turn_7 Int )( turn_8 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = j_1 j )
			( = k_2 k )
			( = n_1 n )
			( = pvlen_1 pvlen )
			( = t_1 t )
			( = turn_2 turn )
			( = i_2 i! )
			( = j_1 j! )
			( = k_2 k! )
			( = n_1 n! )
			( = pvlen_1 pvlen! )
			( = t_1 t! )
			( = turn_2 turn! )
			( = i i! )
			( = j j! )
			( = k k! )
			( = n n! )
			( = pvlen pvlen! )
			( = t t! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = j_1 j )
			( = k_2 k )
			( = n_1 n )
			( = pvlen_1 pvlen )
			( = t_1 t )
			( = turn_2 turn )
			( < turn_2 5 )
			( = turn_2 0 )
			( = i_3 ( + i_2 1 ) )
			( = turn_3 1 )
			( = i_4 i_3 )
			( = j_2 j_1 )
			( = k_3 k_2 )
			( = n_2 n_1 )
			( = pvlen_2 pvlen_1 )
			( = t_2 t_1 )
			( = turn_4 turn_3 )
			( = i_4 i! )
			( = j_2 j! )
			( = k_3 k! )
			( = n_2 n! )
			( = pvlen_2 pvlen! )
			( = t_2 t! )
			( = turn_4 turn! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = j_1 j )
			( = k_2 k )
			( = n_1 n )
			( = pvlen_1 pvlen )
			( = t_1 t )
			( = turn_2 turn )
			( < turn_2 5 )
			( = turn_2 0 )
			( = i_3 ( + i_2 1 ) )
			( = i_4 i_3 )
			( = j_2 j_1 )
			( = k_3 k_2 )
			( = n_2 n_1 )
			( = pvlen_2 pvlen_1 )
			( = t_2 t_1 )
			( = turn_4 turn_2 )
			( = i_4 i! )
			( = j_2 j! )
			( = k_3 k! )
			( = n_2 n! )
			( = pvlen_2 pvlen! )
			( = t_2 t! )
			( = turn_4 turn! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = j_1 j )
			( = k_2 k )
			( = n_1 n )
			( = pvlen_1 pvlen )
			( = t_1 t )
			( = turn_2 turn )
			( < turn_2 5 )
			( not ( = turn_2 0 ) )
			( = turn_2 1 )
			( > i_2 pvlen_1 )
			( = pvlen_3 i_2 )
			( = pvlen_4 pvlen_3 )
			( = i_5 0 )
			( = turn_5 2 )
			( = i_4 i_5 )
			( = j_2 j_1 )
			( = k_3 k_2 )
			( = n_2 n_1 )
			( = pvlen_2 pvlen_4 )
			( = t_2 t_1 )
			( = turn_4 turn_5 )
			( = i_4 i! )
			( = j_2 j! )
			( = k_3 k! )
			( = n_2 n! )
			( = pvlen_2 pvlen! )
			( = t_2 t! )
			( = turn_4 turn! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = j_1 j )
			( = k_2 k )
			( = n_1 n )
			( = pvlen_1 pvlen )
			( = t_1 t )
			( = turn_2 turn )
			( < turn_2 5 )
			( not ( = turn_2 0 ) )
			( = turn_2 1 )
			( not ( > i_2 pvlen_1 ) )
			( = pvlen_4 pvlen_1 )
			( = i_5 0 )
			( = turn_5 2 )
			( = i_4 i_5 )
			( = j_2 j_1 )
			( = k_3 k_2 )
			( = n_2 n_1 )
			( = pvlen_2 pvlen_4 )
			( = t_2 t_1 )
			( = turn_4 turn_5 )
			( = i_4 i! )
			( = j_2 j! )
			( = k_3 k! )
			( = n_2 n! )
			( = pvlen_2 pvlen! )
			( = t_2 t! )
			( = turn_4 turn! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = j_1 j )
			( = k_2 k )
			( = n_1 n )
			( = pvlen_1 pvlen )
			( = t_1 t )
			( = turn_2 turn )
			( < turn_2 5 )
			( not ( = turn_2 0 ) )
			( not ( = turn_2 1 ) )
			( = turn_2 2 )
			( = t_3 i_2 )
			( = i_6 ( + i_2 1 ) )
			( = k_4 ( + k_2 1 ) )
			( = turn_6 3 )
			( = i_4 i_6 )
			( = j_2 j_1 )
			( = k_3 k_4 )
			( = n_2 n_1 )
			( = pvlen_2 pvlen_1 )
			( = t_2 t_3 )
			( = turn_4 turn_6 )
			( = i_4 i! )
			( = j_2 j! )
			( = k_3 k! )
			( = n_2 n! )
			( = pvlen_2 pvlen! )
			( = t_2 t! )
			( = turn_4 turn! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = j_1 j )
			( = k_2 k )
			( = n_1 n )
			( = pvlen_1 pvlen )
			( = t_1 t )
			( = turn_2 turn )
			( < turn_2 5 )
			( not ( = turn_2 0 ) )
			( not ( = turn_2 1 ) )
			( = turn_2 2 )
			( = t_3 i_2 )
			( = i_6 ( + i_2 1 ) )
			( = k_4 ( + k_2 1 ) )
			( = i_4 i_6 )
			( = j_2 j_1 )
			( = k_3 k_4 )
			( = n_2 n_1 )
			( = pvlen_2 pvlen_1 )
			( = t_2 t_3 )
			( = turn_4 turn_2 )
			( = i_4 i! )
			( = j_2 j! )
			( = k_3 k! )
			( = n_2 n! )
			( = pvlen_2 pvlen! )
			( = t_2 t! )
			( = turn_4 turn! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = j_1 j )
			( = k_2 k )
			( = n_1 n )
			( = pvlen_1 pvlen )
			( = t_1 t )
			( = turn_2 turn )
			( < turn_2 5 )
			( not ( = turn_2 0 ) )
			( not ( = turn_2 1 ) )
			( not ( = turn_2 2 ) )
			( = turn_2 3 )
			( = turn_7 4 )
			( = i_4 i_2 )
			( = j_2 j_1 )
			( = k_3 k_2 )
			( = n_2 n_1 )
			( = pvlen_2 pvlen_1 )
			( = t_2 t_1 )
			( = turn_4 turn_7 )
			( = i_4 i! )
			( = j_2 j! )
			( = k_3 k! )
			( = n_2 n! )
			( = pvlen_2 pvlen! )
			( = t_2 t! )
			( = turn_4 turn! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = j_1 j )
			( = k_2 k )
			( = n_1 n )
			( = pvlen_1 pvlen )
			( = t_1 t )
			( = turn_2 turn )
			( < turn_2 5 )
			( not ( = turn_2 0 ) )
			( not ( = turn_2 1 ) )
			( not ( = turn_2 2 ) )
			( = turn_2 3 )
			( = i_4 i_2 )
			( = j_2 j_1 )
			( = k_3 k_2 )
			( = n_2 n_1 )
			( = pvlen_2 pvlen_1 )
			( = t_2 t_1 )
			( = turn_4 turn_2 )
			( = i_4 i! )
			( = j_2 j! )
			( = k_3 k! )
			( = n_2 n! )
			( = pvlen_2 pvlen! )
			( = t_2 t! )
			( = turn_4 turn! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = j_1 j )
			( = k_2 k )
			( = n_1 n )
			( = pvlen_1 pvlen )
			( = t_1 t )
			( = turn_2 turn )
			( < turn_2 5 )
			( not ( = turn_2 0 ) )
			( not ( = turn_2 1 ) )
			( not ( = turn_2 2 ) )
			( not ( = turn_2 3 ) )
			( = turn_2 4 )
			( = n_3 i_2 )
			( = j_3 0 )
			( = turn_8 5 )
			( = i_4 i_2 )
			( = j_2 j_3 )
			( = k_3 k_2 )
			( = n_2 n_3 )
			( = pvlen_2 pvlen_1 )
			( = t_2 t_1 )
			( = turn_4 turn_8 )
			( = i_4 i! )
			( = j_2 j! )
			( = k_3 k! )
			( = n_2 n! )
			( = pvlen_2 pvlen! )
			( = t_2 t! )
			( = turn_4 turn! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = j_1 j )
			( = k_2 k )
			( = n_1 n )
			( = pvlen_1 pvlen )
			( = t_1 t )
			( = turn_2 turn )
			( < turn_2 5 )
			( not ( = turn_2 0 ) )
			( not ( = turn_2 1 ) )
			( not ( = turn_2 2 ) )
			( not ( = turn_2 3 ) )
			( not ( = turn_2 4 ) )
			( = i_4 i_2 )
			( = j_2 j_1 )
			( = k_3 k_2 )
			( = n_2 n_1 )
			( = pvlen_2 pvlen_1 )
			( = t_2 t_1 )
			( = turn_4 turn_2 )
			( = i_4 i! )
			( = j_2 j! )
			( = k_3 k! )
			( = n_2 n! )
			( = pvlen_2 pvlen! )
			( = t_2 t! )
			( = turn_4 turn! )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( k Int )( n Int )( pvlen Int )( t Int )( turn Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( i_5 Int )( i_6 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( k_0 Int )( k_1 Int )( k_2 Int )( k_3 Int )( k_4 Int )( n_0 Int )( n_1 Int )( n_2 Int )( n_3 Int )( pvlen_0 Int )( pvlen_1 Int )( pvlen_2 Int )( pvlen_3 Int )( pvlen_4 Int )( t_0 Int )( t_1 Int )( t_2 Int )( t_3 Int )( turn_0 Int )( turn_1 Int )( turn_2 Int )( turn_3 Int )( turn_4 Int )( turn_5 Int )( turn_6 Int )( turn_7 Int )( turn_8 Int ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = j j_1)
				( = k k_2)
				( = n n_1)
				( = pvlen pvlen_1)
				( = t t_1)
				( = turn turn_2)
			)
		)
		( not
			( and
				( not ( < turn_2 5 ) )
				( not ( >= k_2 0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j k n pvlen t turn tmp i_0 i_1 i_2 i_3 i_4 i_5 i_6 j_0 j_1 j_2 j_3 k_0 k_1 k_2 k_3 k_4 n_0 n_1 n_2 n_3 pvlen_0 pvlen_1 pvlen_2 pvlen_3 pvlen_4 t_0 t_1 t_2 t_3 turn_0 turn_1 turn_2 turn_3 turn_4 turn_5 turn_6 turn_7 turn_8  )
		( inv-f i j k n pvlen t turn tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j k n pvlen t turn tmp )
			( trans-f i j k n pvlen t turn tmp i! j! k! n! pvlen! t! turn! tmp! i_0 i_1 i_2 i_3 i_4 i_5 i_6 j_0 j_1 j_2 j_3 k_0 k_1 k_2 k_3 k_4 n_0 n_1 n_2 n_3 pvlen_0 pvlen_1 pvlen_2 pvlen_3 pvlen_4 t_0 t_1 t_2 t_3 turn_0 turn_1 turn_2 turn_3 turn_4 turn_5 turn_6 turn_7 turn_8 )
		)
		( inv-f i! j! k! n! pvlen! t! turn! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j k n pvlen t turn tmp  )
		( post-f i j k n pvlen t turn tmp i_0 i_1 i_2 i_3 i_4 i_5 i_6 j_0 j_1 j_2 j_3 k_0 k_1 k_2 k_3 k_4 n_0 n_1 n_2 n_3 pvlen_0 pvlen_1 pvlen_2 pvlen_3 pvlen_4 t_0 t_1 t_2 t_3 turn_0 turn_1 turn_2 turn_3 turn_4 turn_5 turn_6 turn_7 turn_8 )
	)
))

