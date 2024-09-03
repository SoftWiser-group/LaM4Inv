(set-logic LIA)

( declare-const xa Int )
( declare-const xa! Int )
( declare-const ya Int )
( declare-const ya! Int )

( declare-const xa_0 Int )
( declare-const xa_1 Int )
( declare-const xa_2 Int )
( declare-const ya_0 Int )
( declare-const ya_1 Int )
( declare-const ya_2 Int )

( define-fun inv-f( ( xa Int )( ya Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( xa Int )( ya Int )( xa_0 Int )( xa_1 Int )( xa_2 Int )( ya_0 Int )( ya_1 Int )( ya_2 Int ) ) Bool
	( and
		( = xa xa_0 )
		( = ya ya_0 )
		( > ( + xa_0 ya_0 ) 0 )
	)
)

( define-fun trans-f ( ( xa Int )( ya Int )( xa! Int )( ya! Int )( xa_0 Int )( xa_1 Int )( xa_2 Int )( ya_0 Int )( ya_1 Int )( ya_2 Int ) ) Bool
	( or
		( and
			( = xa_1 xa )
			( = ya_1 ya )
			( = xa_1 xa! )
			( = ya_1 ya! )
			( = ya ya! )
		)
		( and
			( = xa_1 xa )
			( = ya_1 ya )
			( > xa_1 0 )
			( = xa_2 ( - xa_1 1 ) )
			( = ya_2 ( + ya_1 1 ) )
			( = xa_2 xa! )
			( = ya_2 ya! )
		)
	)
)

( define-fun post-f ( ( xa Int )( ya Int )( xa_0 Int )( xa_1 Int )( xa_2 Int )( ya_0 Int )( ya_1 Int )( ya_2 Int ) ) Bool
	( or
		( not
			( and
				( = xa xa_1)
				( = ya ya_1)
			)
		)
		( not
			( and
				( not ( > xa_1 0 ) )
				( not ( >= ya_1 0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f xa ya xa_0 xa_1 xa_2 ya_0 ya_1 ya_2  )
		( inv-f xa ya )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f xa ya )
			( trans-f xa ya xa! ya! xa_0 xa_1 xa_2 ya_0 ya_1 ya_2 )
		)
		( inv-f xa! ya! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f xa ya  )
		( post-f xa ya xa_0 xa_1 xa_2 ya_0 ya_1 ya_2 )
	)
))

