(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const k Int )
( declare-const k! Int )
( declare-const n Int )
( declare-const n! Int )
( declare-const v Int )
( declare-const v! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const i_4 Int )
( declare-const i_5 Int )
( declare-const k_0 Int )
( declare-const k_1 Int )
( declare-const k_2 Int )
( declare-const k_3 Int )
( declare-const k_4 Int )
( declare-const k_5 Int )
( declare-const n_0 Int )
( declare-const v_0 Int )
( declare-const v_1 Int )
( declare-const v_2 Int )
( declare-const v_3 Int )
( declare-const v_4 Int )

( define-fun inv-f( ( i Int )( k Int )( n Int )( v Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( k Int )( n Int )( v Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( i_5 Int )( k_0 Int )( k_1 Int )( k_2 Int )( k_3 Int )( k_4 Int )( k_5 Int )( n_0 Int )( v_0 Int )( v_1 Int )( v_2 Int )( v_3 Int )( v_4 Int ) ) Bool
	( and
		( = i i_1 )
		( = k k_1 )
		( = n n_0 )
		( = k_1 0 )
		( = i_1 0 )
		( > n_0 0 )
		( < n_0 10 )
	)
)

( define-fun trans-f ( ( i Int )( k Int )( n Int )( v Int )( tmp Int )( i! Int )( k! Int )( n! Int )( v! Int )( tmp! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( i_5 Int )( k_0 Int )( k_1 Int )( k_2 Int )( k_3 Int )( k_4 Int )( k_5 Int )( n_0 Int )( v_0 Int )( v_1 Int )( v_2 Int )( v_3 Int )( v_4 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = k_2 k )
			( = v_1 v )
			( = i_2 i! )
			( = k_2 k! )
			( = v_1 v! )
			( = n n_0 )
			( = n! n_0 )
			( = k k! )
			( = v v! )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = k_2 k )
			( = v_1 v )
			( < i_2 n_0 )
			( = i_3 ( + i_2 1 ) )
			( = k_3 ( + k_2 4000 ) )
			( = v_2 0 )
			( = i_4 i_3 )
			( = k_4 k_3 )
			( = v_3 v_2 )
			( = i_4 i! )
			( = k_4 k! )
			( = v_3 v! )
			(= n n_0 )
			(= n! n_0 )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( = k_2 k )
			( = v_1 v )
			( < i_2 n_0 )
			( = i_5 ( + i_2 1 ) )
			( = k_5 ( + k_2 2000 ) )
			( = v_4 1 )
			( = i_4 i_5 )
			( = k_4 k_5 )
			( = v_3 v_4 )
			( = i_4 i! )
			( = k_4 k! )
			( = v_3 v! )
			(= n n_0 )
			(= n! n_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( i Int )( k Int )( n Int )( v Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( i_4 Int )( i_5 Int )( k_0 Int )( k_1 Int )( k_2 Int )( k_3 Int )( k_4 Int )( k_5 Int )( n_0 Int )( v_0 Int )( v_1 Int )( v_2 Int )( v_3 Int )( v_4 Int ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = k k_2)
				( = n n_0)
				( = v v_1)
			)
		)
		( not
			( and
				( not ( < i_2 n_0 ) )
				( >= i_2 n_0 )
				( not ( > k_2 n_0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i k n v tmp i_0 i_1 i_2 i_3 i_4 i_5 k_0 k_1 k_2 k_3 k_4 k_5 n_0 v_0 v_1 v_2 v_3 v_4  )
		( inv-f i k n v tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i k n v tmp )
			( trans-f i k n v tmp i! k! n! v! tmp! i_0 i_1 i_2 i_3 i_4 i_5 k_0 k_1 k_2 k_3 k_4 k_5 n_0 v_0 v_1 v_2 v_3 v_4 )
		)
		( inv-f i! k! n! v! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i k n v tmp  )
		( post-f i k n v tmp i_0 i_1 i_2 i_3 i_4 i_5 k_0 k_1 k_2 k_3 k_4 k_5 n_0 v_0 v_1 v_2 v_3 v_4 )
	)
))

