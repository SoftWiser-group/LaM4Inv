(set-logic LIA)

( declare-const b Int )
( declare-const b! Int )
( declare-const flag Int )
( declare-const flag! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const n Int )
( declare-const n! Int )

( declare-const b_0 Int )
( declare-const b_1 Int )
( declare-const b_2 Int )
( declare-const b_3 Int )
( declare-const b_4 Int )
( declare-const b_5 Int )
( declare-const flag_0 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const j_3 Int )
( declare-const j_4 Int )
( declare-const n_0 Int )

( define-fun inv-f( ( b Int )( flag Int )( j Int )( n Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( b Int )( flag Int )( j Int )( n Int )( b_0 Int )( b_1 Int )( b_2 Int )( b_3 Int )( b_4 Int )( b_5 Int )( flag_0 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( n_0 Int ) ) Bool
	( and
		( = b b_1 )
		( = j j_1 )
		( = n n_0 )
		( = j_1 0 )
		( = b_1 0 )
		( > n_0 0 )
	)
)

( define-fun trans-f ( ( b Int )( flag Int )( j Int )( n Int )( b! Int )( flag! Int )( j! Int )( n! Int )( b_0 Int )( b_1 Int )( b_2 Int )( b_3 Int )( b_4 Int )( b_5 Int )( flag_0 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( n_0 Int ) ) Bool
	( or
		( and
			( = b_2 b )
			( = j_2 j )
			( = b_2 b! )
			( = j_2 j! )
			( = n n_0 )
			( = n! n_0 )
			( = flag flag! )
			( = j j! )
		)
		( and
			( = b_2 b )
			( = j_2 j )
			( < b_2 n_0 )
			( = flag_0 1 )
			( = j_3 ( + j_2 1 ) )
			( = b_3 ( + b_2 1 ) )
			( = b_4 b_3 )
			( = j_4 j_3 )
			( = b_4 b! )
			( = j_4 j! )
			(= flag flag_0 )
			(= flag! flag_0 )
			(= n n_0 )
			(= n! n_0 )
		)
		( and
			( = b_2 b )
			( = j_2 j )
			( < b_2 n_0 )
			( not ( = flag_0 1 ) )
			( not ( = flag_0 1 ) )
			( = b_5 ( + b_2 1 ) )
			( = b_4 b_5 )
			( = j_4 j_2 )
			( = b_4 b! )
			( = j_4 j! )
			(= flag flag_0 )
			(= flag! flag_0 )
			(= n n_0 )
			(= n! n_0 )
		)
		( and
			( = b_2 b )
			( = j_2 j )
			( < b_2 n_0 )
			( not ( = flag_0 1 ) )
			( not ( not ( = flag_0 1 ) ) )
			( = b_4 b_2 )
			( = j_4 j_2 )
			( = b_4 b! )
			( = j_4 j! )
			(= flag flag_0 )
			(= flag! flag_0 )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( b Int )( flag Int )( j Int )( n Int )( b_0 Int )( b_1 Int )( b_2 Int )( b_3 Int )( b_4 Int )( b_5 Int )( flag_0 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( j_4 Int )( n_0 Int ) ) Bool
	( or
		( not
			( and
				( = b b_2)
				( = flag flag_0 )
				( = j j_2)
				( = n n_0)
			)
		)
		( not
			( and
				( not ( < b_2 n_0 ) )
				( = flag_0 1 )
				( not ( = j_2 n_0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f b flag j n b_0 b_1 b_2 b_3 b_4 b_5 flag_0 j_0 j_1 j_2 j_3 j_4 n_0  )
		( inv-f b flag j n )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f b flag j n )
			( trans-f b flag j n b! flag! j! n! b_0 b_1 b_2 b_3 b_4 b_5 flag_0 j_0 j_1 j_2 j_3 j_4 n_0 )
		)
		( inv-f b! flag! j! n! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f b flag j n  )
		( post-f b flag j n b_0 b_1 b_2 b_3 b_4 b_5 flag_0 j_0 j_1 j_2 j_3 j_4 n_0 )
	)
))

