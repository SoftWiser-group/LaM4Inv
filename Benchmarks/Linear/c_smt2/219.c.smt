(set-logic LIA)

( declare-const s Int )
( declare-const s! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const s_0 Int )
( declare-const s_1 Int )
( declare-const s_2 Int )
( declare-const s_3 Int )
( declare-const s_4 Int )

( define-fun inv-f( ( s Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( s Int )( tmp Int )( s_0 Int )( s_1 Int )( s_2 Int )( s_3 Int )( s_4 Int ) ) Bool
	( and
		( = s s_1 )
		( = s_1 0 )
	)
)

( define-fun trans-f ( ( s Int )( tmp Int )( s! Int )( tmp! Int )( s_0 Int )( s_1 Int )( s_2 Int )( s_3 Int )( s_4 Int ) ) Bool
	( or
		( and
			( = s_2 s )
			( = s_2 s! )
			( = s s! )
			(= tmp tmp! )
		)
		( and
			( = s_2 s )
			( not ( = s_2 0 ) )
			( = s_3 ( + s_2 1 ) )
			( = s_4 s_3 )
			( = s_4 s! )
			(= tmp tmp! )
		)
		( and
			( = s_2 s )
			( not ( not ( = s_2 0 ) ) )
			( = s_4 s_2 )
			( = s_4 s! )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( s Int )( tmp Int )( s_0 Int )( s_1 Int )( s_2 Int )( s_3 Int )( s_4 Int ) ) Bool
	( or
		( not
			( = s s_2)
		)
		( not
			( and
				( not ( = s_2 0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f s tmp s_0 s_1 s_2 s_3 s_4  )
		( inv-f s tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f s tmp )
			( trans-f s tmp s! tmp! s_0 s_1 s_2 s_3 s_4 )
		)
		( inv-f s! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f s tmp  )
		( post-f s tmp s_0 s_1 s_2 s_3 s_4 )
	)
))

