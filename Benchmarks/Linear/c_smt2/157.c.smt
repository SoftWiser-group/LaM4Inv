(set-logic LIA)

( declare-const a Int )
( declare-const a! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const m Int )
( declare-const m! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const a_0 Int )
( declare-const a_1 Int )
( declare-const a_2 Int )
( declare-const a_3 Int )
( declare-const a_4 Int )
( declare-const a_5 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const j_3 Int )
( declare-const m_0 Int )

( define-fun inv-f( ( a Int )( j Int )( m Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( a Int )( j Int )( m Int )( tmp Int )( a_0 Int )( a_1 Int )( a_2 Int )( a_3 Int )( a_4 Int )( a_5 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( m_0 Int ) ) Bool
	( and
		( = a a_1 )
		( = j j_1 )
		( = m m_0 )
		( = a_1 0 )
		( = j_1 1 )
		( > m_0 0 )
	)
)

( define-fun trans-f ( ( a Int )( j Int )( m Int )( tmp Int )( a! Int )( j! Int )( m! Int )( tmp! Int )( a_0 Int )( a_1 Int )( a_2 Int )( a_3 Int )( a_4 Int )( a_5 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( m_0 Int ) ) Bool
	( or
		( and
			( = a_2 a )
			( = j_2 j )
			( = a_2 a! )
			( = j_2 j! )
			( = m m_0 )
			( = m! m_0 )
			( = a a! )
			(= tmp tmp! )
		)
		( and
			( = a_2 a )
			( = j_2 j )
			( <= j_2 m_0 )
			( = a_3 ( + a_2 1 ) )
			( = a_4 a_3 )
			( = j_3 ( + j_2 1 ) )
			( = a_4 a! )
			( = j_3 j! )
			(= m m_0 )
			(= m! m_0 )
			(= tmp tmp! )
		)
		( and
			( = a_2 a )
			( = j_2 j )
			( <= j_2 m_0 )
			( = a_5 ( - a_2 1 ) )
			( = a_4 a_5 )
			( = j_3 ( + j_2 1 ) )
			( = a_4 a! )
			( = j_3 j! )
			(= m m_0 )
			(= m! m_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( a Int )( j Int )( m Int )( tmp Int )( a_0 Int )( a_1 Int )( a_2 Int )( a_3 Int )( a_4 Int )( a_5 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( m_0 Int ) ) Bool
	( or
		( not
			( and
				( = a a_2)
				( = j j_2)
				( = m m_0)
			)
		)
		( not
			( and
				( not ( <= j_2 m_0 ) )
				( > j_2 m_0 )
				( not ( >= a_2 ( - 0 m_0 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f a j m tmp a_0 a_1 a_2 a_3 a_4 a_5 j_0 j_1 j_2 j_3 m_0  )
		( inv-f a j m tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f a j m tmp )
			( trans-f a j m tmp a! j! m! tmp! a_0 a_1 a_2 a_3 a_4 a_5 j_0 j_1 j_2 j_3 m_0 )
		)
		( inv-f a! j! m! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f a j m tmp  )
		( post-f a j m tmp a_0 a_1 a_2 a_3 a_4 a_5 j_0 j_1 j_2 j_3 m_0 )
	)
))

