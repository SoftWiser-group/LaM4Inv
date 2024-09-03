(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const n Int )
( declare-const n! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const i_4 Int )
( declare-const i_5 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const n_0 Int )

( define-fun inv-f( ( i Int )( j Int )( n Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( n Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( i_5 Int )( j_0 Int )( j_1 Int )( n_0 Int ) ) Bool
	( and
		( = i i_1 )
		( = j j_1 )
		( = n n_0 )
		( = i_1 0 )
		( = j_1 0 )
		( <= n_0 50000001 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( n Int )( tmp Int )( i! Int )( j! Int )( n! Int )( tmp! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( i_5 Int )( j_0 Int )( j_1 Int )( n_0 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = i_2 i! )
			( = n n_0 )
			( = n! n_0 )
			( = j j! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( < i_2 n_0 )
			( = i_3 ( + i_2 6 ) )
			( = i_4 i_3 )
			( = i_4 i! )
			(= j j_1 )
			(= j! j_1 )
			(= n n_0 )
			(= n! n_0 )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( < i_2 n_0 )
			( = i_5 ( + i_2 3 ) )
			( = i_4 i_5 )
			( = i_4 i! )
			(= j j_1 )
			(= j! j_1 )
			(= n n_0 )
			(= n! n_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( n Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( i_5 Int )( j_0 Int )( j_1 Int )( n_0 Int ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = j j_1)
				( = n n_0)
			)
		)
		( not
			( and
				( not ( < i_2 n_0 ) )
				( not ( = ( mod i_2 3 ) 0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j n tmp i_0 i_1 i_2 i_3 i_4 i_5 j_0 j_1 n_0  )
		( inv-f i j n tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j n tmp )
			( trans-f i j n tmp i! j! n! tmp! i_0 i_1 i_2 i_3 i_4 i_5 j_0 j_1 n_0 )
		)
		( inv-f i! j! n! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j n tmp  )
		( post-f i j n tmp i_0 i_1 i_2 i_3 i_4 i_5 j_0 j_1 n_0 )
	)
))

