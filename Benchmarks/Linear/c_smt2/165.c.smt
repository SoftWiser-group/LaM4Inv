(set-logic LIA)

( declare-const m Int )
( declare-const m! Int )
( declare-const n Int )
( declare-const n! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )

( declare-const m_0 Int )
( declare-const n_0 Int )
( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const x_3 Int )
( declare-const x_4 Int )
( declare-const x_5 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )
( declare-const y_3 Int )
( declare-const y_4 Int )

( define-fun inv-f( ( m Int )( n Int )( x Int )( y Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( m Int )( n Int )( x Int )( y Int )( m_0 Int )( n_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( x_5 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int ) ) Bool
	( and
		( = m m_0 )
		( = n n_0 )
		( = x x_1 )
		( = y y_1 )
		( = x_1 0 )
		( = y_1 m_0 )
		( >= n_0 0 )
		( >= m_0 0 )
		( < m_0 n_0 )
	)
)

( define-fun trans-f ( ( m Int )( n Int )( x Int )( y Int )( m! Int )( n! Int )( x! Int )( y! Int )( m_0 Int )( n_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( x_5 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int ) ) Bool
	( or
		( and
			( = x_2 x )
			( = y_2 y )
			( = x_2 x! )
			( = y_2 y! )
			( = n n_0 )
			( = n! n_0 )
			( = m m! )
			( = y y! )
		)
		( and
			( = x_2 x )
			( = y_2 y )
			( < x_2 n_0 )
			( <= ( + x_2 1 ) m_0 )
			( = x_3 ( + x_2 1 ) )
			( = x_4 x_3 )
			( = y_3 y_2 )
			( = x_4 x! )
			( = y_3 y! )
			(= m m_0 )
			(= m! m_0 )
			(= n n_0 )
			(= n! n_0 )
		)
		( and
			( = x_2 x )
			( = y_2 y )
			( < x_2 n_0 )
			( not ( <= ( + x_2 1 ) m_0 ) )
			( > ( + x_2 1 ) m_0 )
			( = x_5 ( + x_2 1 ) )
			( = y_4 ( + y_2 1 ) )
			( = x_4 x_5 )
			( = y_3 y_4 )
			( = x_4 x! )
			( = y_3 y! )
			(= m m_0 )
			(= m! m_0 )
			(= n n_0 )
			(= n! n_0 )
		)
		( and
			( = x_2 x )
			( = y_2 y )
			( < x_2 n_0 )
			( not ( <= ( + x_2 1 ) m_0 ) )
			( not ( > ( + x_2 1 ) m_0 ) )
			( = x_4 x_2 )
			( = y_3 y_2 )
			( = x_4 x! )
			( = y_3 y! )
			(= m m_0 )
			(= m! m_0 )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( m Int )( n Int )( x Int )( y Int )( m_0 Int )( n_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( x_4 Int )( x_5 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int ) ) Bool
	( or
		( not
			( and
				( = m m_0)
				( = n n_0)
				( = x x_2)
				( = y y_2)
			)
		)
		( not
			( and
				( not ( < x_2 n_0 ) )
				( >= x_2 n_0 )
				( not ( = y_2 n_0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f m n x y m_0 n_0 x_0 x_1 x_2 x_3 x_4 x_5 y_0 y_1 y_2 y_3 y_4  )
		( inv-f m n x y )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f m n x y )
			( trans-f m n x y m! n! x! y! m_0 n_0 x_0 x_1 x_2 x_3 x_4 x_5 y_0 y_1 y_2 y_3 y_4 )
		)
		( inv-f m! n! x! y! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f m n x y  )
		( post-f m n x y m_0 n_0 x_0 x_1 x_2 x_3 x_4 x_5 y_0 y_1 y_2 y_3 y_4 )
	)
))

