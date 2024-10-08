(set-logic LIA)

( declare-const exclusive Int )
( declare-const exclusive! Int )
( declare-const invalid Int )
( declare-const invalid! Int )
( declare-const nonexclusive Int )
( declare-const nonexclusive! Int )
( declare-const unowned Int )
( declare-const unowned! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const exclusive_0 Int )
( declare-const exclusive_1 Int )
( declare-const exclusive_2 Int )
( declare-const exclusive_3 Int )
( declare-const exclusive_4 Int )
( declare-const exclusive_5 Int )
( declare-const exclusive_6 Int )
( declare-const invalid_0 Int )
( declare-const invalid_1 Int )
( declare-const invalid_2 Int )
( declare-const invalid_3 Int )
( declare-const invalid_4 Int )
( declare-const nonexclusive_0 Int )
( declare-const nonexclusive_1 Int )
( declare-const nonexclusive_2 Int )
( declare-const nonexclusive_3 Int )
( declare-const nonexclusive_4 Int )
( declare-const nonexclusive_5 Int )
( declare-const nonexclusive_6 Int )
( declare-const unowned_0 Int )
( declare-const unowned_1 Int )
( declare-const unowned_2 Int )
( declare-const unowned_3 Int )
( declare-const unowned_4 Int )
( declare-const unowned_5 Int )
( declare-const unowned_6 Int )

( define-fun inv-f( ( exclusive Int )( invalid Int )( nonexclusive Int )( unowned Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( exclusive Int )( invalid Int )( nonexclusive Int )( unowned Int )( tmp Int )( exclusive_0 Int )( exclusive_1 Int )( exclusive_2 Int )( exclusive_3 Int )( exclusive_4 Int )( exclusive_5 Int )( exclusive_6 Int )( invalid_0 Int )( invalid_1 Int )( invalid_2 Int )( invalid_3 Int )( invalid_4 Int )( nonexclusive_0 Int )( nonexclusive_1 Int )( nonexclusive_2 Int )( nonexclusive_3 Int )( nonexclusive_4 Int )( nonexclusive_5 Int )( nonexclusive_6 Int )( unowned_0 Int )( unowned_1 Int )( unowned_2 Int )( unowned_3 Int )( unowned_4 Int )( unowned_5 Int )( unowned_6 Int ) ) Bool
	( and
		( = exclusive exclusive_1 )
		( = invalid invalid_0 )
		( = nonexclusive nonexclusive_1 )
		( = unowned unowned_1 )
		( = unowned_1 0 )
		( = nonexclusive_1 0 )
		( = exclusive_1 0 )
		( >= invalid_0 1 )
	)
)

( define-fun trans-f ( ( exclusive Int )( invalid Int )( nonexclusive Int )( unowned Int )( tmp Int )( exclusive! Int )( invalid! Int )( nonexclusive! Int )( unowned! Int )( tmp! Int )( exclusive_0 Int )( exclusive_1 Int )( exclusive_2 Int )( exclusive_3 Int )( exclusive_4 Int )( exclusive_5 Int )( exclusive_6 Int )( invalid_0 Int )( invalid_1 Int )( invalid_2 Int )( invalid_3 Int )( invalid_4 Int )( nonexclusive_0 Int )( nonexclusive_1 Int )( nonexclusive_2 Int )( nonexclusive_3 Int )( nonexclusive_4 Int )( nonexclusive_5 Int )( nonexclusive_6 Int )( unowned_0 Int )( unowned_1 Int )( unowned_2 Int )( unowned_3 Int )( unowned_4 Int )( unowned_5 Int )( unowned_6 Int ) ) Bool
	( or
		( and
			( = exclusive_2 exclusive )
			( = invalid_1 invalid )
			( = nonexclusive_2 nonexclusive )
			( = unowned_2 unowned )
			( = exclusive_2 exclusive! )
			( = invalid_1 invalid! )
			( = nonexclusive_2 nonexclusive! )
			( = unowned_2 unowned! )
			( = exclusive exclusive! )
			( = invalid invalid! )
			(= tmp tmp! )
		)
		( and
			( = exclusive_2 exclusive )
			( = invalid_1 invalid )
			( = nonexclusive_2 nonexclusive )
			( = unowned_2 unowned )
			( not ( >= ( + nonexclusive_2 unowned_2 ) 1 ) )
			( >= invalid_1 1 )
			( = nonexclusive_3 ( + nonexclusive_2 exclusive_2 ) )
			( = exclusive_3 0 )
			( = invalid_2 ( - invalid_1 1 ) )
			( = unowned_3 ( + unowned_2 1 ) )
			( = exclusive_5 exclusive_3 )
			( = invalid_3 invalid_2 )
			( = nonexclusive_5 nonexclusive_3 )
			( = unowned_5 unowned_3 )
			( = exclusive_5 exclusive! )
			( = invalid_3 invalid! )
			( = nonexclusive_5 nonexclusive! )
			( = unowned_5 unowned! )
			(= tmp tmp! )
		)
		( and
			( = exclusive_2 exclusive )
			( = invalid_1 invalid )
			( = nonexclusive_2 nonexclusive )
			( = unowned_2 unowned )
			( not ( >= ( + nonexclusive_2 unowned_2 ) 1 ) )
			( >= invalid_1 1 )
			( = exclusive_4 1 )
			( = unowned_4 0 )
			( = nonexclusive_4 0 )
			( = exclusive_5 exclusive_4 )
			( = invalid_3 invalid_1 )
			( = nonexclusive_5 nonexclusive_4 )
			( = unowned_5 unowned_4 )
			( = exclusive_5 exclusive! )
			( = invalid_3 invalid! )
			( = nonexclusive_5 nonexclusive! )
			( = unowned_5 unowned! )
			(= tmp tmp! )
		)
		( and
			( = exclusive_2 exclusive )
			( = invalid_1 invalid )
			( = nonexclusive_2 nonexclusive )
			( = unowned_2 unowned )
			( not ( >= ( + nonexclusive_2 unowned_2 ) 1 ) )
			( not ( >= invalid_1 1 ) )
			( >= ( + nonexclusive_2 unowned_2 ) 1 )
			( = invalid_4 ( - ( + ( + invalid_1 unowned_2 ) nonexclusive_2 ) 1 ) )
			( = nonexclusive_6 0 )
			( = exclusive_6 ( + exclusive_2 1 ) )
			( = unowned_6 0 )
			( = exclusive_5 exclusive_6 )
			( = invalid_3 invalid_4 )
			( = nonexclusive_5 nonexclusive_6 )
			( = unowned_5 unowned_6 )
			( = exclusive_5 exclusive! )
			( = invalid_3 invalid! )
			( = nonexclusive_5 nonexclusive! )
			( = unowned_5 unowned! )
			(= tmp tmp! )
		)
		( and
			( = exclusive_2 exclusive )
			( = invalid_1 invalid )
			( = nonexclusive_2 nonexclusive )
			( = unowned_2 unowned )
			( not ( >= ( + nonexclusive_2 unowned_2 ) 1 ) )
			( not ( >= invalid_1 1 ) )
			( not ( >= ( + nonexclusive_2 unowned_2 ) 1 ) )
			( = exclusive_5 exclusive_2 )
			( = invalid_3 invalid_1 )
			( = nonexclusive_5 nonexclusive_2 )
			( = unowned_5 unowned_2 )
			( = exclusive_5 exclusive! )
			( = invalid_3 invalid! )
			( = nonexclusive_5 nonexclusive! )
			( = unowned_5 unowned! )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( exclusive Int )( invalid Int )( nonexclusive Int )( unowned Int )( tmp Int )( exclusive_0 Int )( exclusive_1 Int )( exclusive_2 Int )( exclusive_3 Int )( exclusive_4 Int )( exclusive_5 Int )( exclusive_6 Int )( invalid_0 Int )( invalid_1 Int )( invalid_2 Int )( invalid_3 Int )( invalid_4 Int )( nonexclusive_0 Int )( nonexclusive_1 Int )( nonexclusive_2 Int )( nonexclusive_3 Int )( nonexclusive_4 Int )( nonexclusive_5 Int )( nonexclusive_6 Int )( unowned_0 Int )( unowned_1 Int )( unowned_2 Int )( unowned_3 Int )( unowned_4 Int )( unowned_5 Int )( unowned_6 Int ) ) Bool
	( or
		( not
			( and
				( = exclusive exclusive_2)
				( = invalid invalid_1)
				( = nonexclusive nonexclusive_2)
				( = unowned unowned_2)
			)
		)
		( not
			( and
				( not ( not ( >= ( + nonexclusive_2 unowned_2 ) 1 ) ) )
				( not ( not ( >= invalid_1 1 ) ) )
				( >= ( + nonexclusive_2 unowned_2 ) 1 )
				( >= invalid_1 1 )
				( not ( >= invalid_1 0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f exclusive invalid nonexclusive unowned tmp exclusive_0 exclusive_1 exclusive_2 exclusive_3 exclusive_4 exclusive_5 exclusive_6 invalid_0 invalid_1 invalid_2 invalid_3 invalid_4 nonexclusive_0 nonexclusive_1 nonexclusive_2 nonexclusive_3 nonexclusive_4 nonexclusive_5 nonexclusive_6 unowned_0 unowned_1 unowned_2 unowned_3 unowned_4 unowned_5 unowned_6  )
		( inv-f exclusive invalid nonexclusive unowned tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f exclusive invalid nonexclusive unowned tmp )
			( trans-f exclusive invalid nonexclusive unowned tmp exclusive! invalid! nonexclusive! unowned! tmp! exclusive_0 exclusive_1 exclusive_2 exclusive_3 exclusive_4 exclusive_5 exclusive_6 invalid_0 invalid_1 invalid_2 invalid_3 invalid_4 nonexclusive_0 nonexclusive_1 nonexclusive_2 nonexclusive_3 nonexclusive_4 nonexclusive_5 nonexclusive_6 unowned_0 unowned_1 unowned_2 unowned_3 unowned_4 unowned_5 unowned_6 )
		)
		( inv-f exclusive! invalid! nonexclusive! unowned! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f exclusive invalid nonexclusive unowned tmp  )
		( post-f exclusive invalid nonexclusive unowned tmp exclusive_0 exclusive_1 exclusive_2 exclusive_3 exclusive_4 exclusive_5 exclusive_6 invalid_0 invalid_1 invalid_2 invalid_3 invalid_4 nonexclusive_0 nonexclusive_1 nonexclusive_2 nonexclusive_3 nonexclusive_4 nonexclusive_5 nonexclusive_6 unowned_0 unowned_1 unowned_2 unowned_3 unowned_4 unowned_5 unowned_6 )
	)
))

