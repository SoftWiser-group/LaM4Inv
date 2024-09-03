(set-logic LIA)

( declare-const c Int )
( declare-const c! Int )
( declare-const cl Int )
( declare-const cl! Int )
( declare-const p Int )
( declare-const p! Int )

( declare-const c_0 Int )
( declare-const c_1 Int )
( declare-const cl_0 Int )
( declare-const cl_1 Int )
( declare-const cl_2 Int )
( declare-const p_0 Int )
( declare-const p_1 Int )
( declare-const p_2 Int )
( declare-const p_3 Int )

( define-fun inv-f( ( c Int )( cl Int )( p Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( c Int )( cl Int )( p Int )( c_0 Int )( c_1 Int )( cl_0 Int )( cl_1 Int )( cl_2 Int )( p_0 Int )( p_1 Int )( p_2 Int )( p_3 Int ) ) Bool
	( and
		( = c c_1 )
		( = cl cl_0 )
		( = p p_1 )
		( = p_1 0 )
		( = c_1 cl_0 )
	)
)

( define-fun trans-f ( ( c Int )( cl Int )( p Int )( c! Int )( cl! Int )( p! Int )( c_0 Int )( c_1 Int )( cl_0 Int )( cl_1 Int )( cl_2 Int )( p_0 Int )( p_1 Int )( p_2 Int )( p_3 Int ) ) Bool
	( or
		( and
			( = cl_1 cl )
			( = p_2 p )
			( = cl_1 cl! )
			( = p_2 p! )
			( = c c! )
			( = cl cl! )
		)
		( and
			( = cl_1 cl )
			( = p_2 p )
			( < p_2 4 )
			( > cl_1 0 )
			( = cl_2 ( - cl_1 1 ) )
			( = p_3 ( + p_2 1 ) )
			( = cl_2 cl! )
			( = p_3 p! )
			(= c c_1 )
			(= c! c_1 )
		)
		( and
			( < p_2 4 )
			( not ( > cl_1 0 ) )
			(= c c_1 )
			(= c! c_1 )
			(= cl cl_0 )
			(= cl! cl_0 )
			(= p p_1 )
			(= p! p_1 )
		)
	)
)

( define-fun post-f ( ( c Int )( cl Int )( p Int )( c_0 Int )( c_1 Int )( cl_0 Int )( cl_1 Int )( cl_2 Int )( p_0 Int )( p_1 Int )( p_2 Int )( p_3 Int ) ) Bool
	( or
		( not
			( and
				( = c c_1)
				( = cl cl_1)
				( = p p_2)
			)
		)
		( not
			( and
				( not ( < p_2 4 ) )
				( >= c_1 4 )
				( not ( = p_2 4 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f c cl p c_0 c_1 cl_0 cl_1 cl_2 p_0 p_1 p_2 p_3  )
		( inv-f c cl p )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f c cl p )
			( trans-f c cl p c! cl! p! c_0 c_1 cl_0 cl_1 cl_2 p_0 p_1 p_2 p_3 )
		)
		( inv-f c! cl! p! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f c cl p  )
		( post-f c cl p c_0 c_1 cl_0 cl_1 cl_2 p_0 p_1 p_2 p_3 )
	)
))

