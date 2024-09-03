(set-logic LIA)

( declare-const idBitLength Int )
( declare-const idBitLength! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const material_length Int )
( declare-const material_length! Int )
( declare-const nlen Int )
( declare-const nlen! Int )

( declare-const idBitLength_0 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const j_3 Int )
( declare-const material_length_0 Int )
( declare-const nlen_0 Int )

( define-fun inv-f( ( idBitLength Int )( j Int )( material_length Int )( nlen Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( idBitLength Int )( j Int )( material_length Int )( nlen Int )( idBitLength_0 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( material_length_0 Int )( nlen_0 Int ) ) Bool
	( and
		( = idBitLength idBitLength_0 )
		( = j j_1 )
		( = material_length material_length_0 )
		( = nlen nlen_0 )
		( = nlen_0 ( / idBitLength_0 32 ) )
		( >= idBitLength_0 0 )
		( >= material_length_0 0 )
		( = j_1 0 )
	)
)

( define-fun trans-f ( ( idBitLength Int )( j Int )( material_length Int )( nlen Int )( idBitLength! Int )( j! Int )( material_length! Int )( nlen! Int )( idBitLength_0 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( material_length_0 Int )( nlen_0 Int ) ) Bool
	( or
		( and
			( = j_2 j )
			( = j_2 j! )
			( = idBitLength idBitLength_0 )
			( = idBitLength! idBitLength_0 )
			( = material_length material_length! )
			( = nlen nlen! )
		)
		( and
			( = j_2 j )
			( < j_2 ( / idBitLength_0 8 ) )
			( < j_2 material_length_0 )
			( = j_3 ( + j_2 1 ) )
			( = j_3 j! )
			(= idBitLength idBitLength_0 )
			(= idBitLength! idBitLength_0 )
			(= material_length material_length_0 )
			(= material_length! material_length_0 )
			(= nlen nlen_0 )
			(= nlen! nlen_0 )
		)
		( and
			( < j_2 ( / idBitLength_0 8 ) )
			( not ( < j_2 material_length_0 ) )
			(= idBitLength idBitLength_0 )
			(= idBitLength! idBitLength_0 )
			(= j j_1 )
			(= j! j_1 )
			(= material_length material_length_0 )
			(= material_length! material_length_0 )
			(= nlen nlen_0 )
			(= nlen! nlen_0 )
		)
	)
)

( define-fun post-f ( ( idBitLength Int )( j Int )( material_length Int )( nlen Int )( idBitLength_0 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( material_length_0 Int )( nlen_0 Int ) ) Bool
	( or
		( not
			( and
				( = idBitLength idBitLength_0)
				( = j j_2)
				( = material_length material_length_0)
				( = nlen nlen_0)
			)
		)
		( not
			( and
				( not ( < j_2 ( / idBitLength_0 8 ) ) )
				( not ( <= ( / j_2 4 ) nlen_0 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f idBitLength j material_length nlen idBitLength_0 j_0 j_1 j_2 j_3 material_length_0 nlen_0  )
		( inv-f idBitLength j material_length nlen )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f idBitLength j material_length nlen )
			( trans-f idBitLength j material_length nlen idBitLength! j! material_length! nlen! idBitLength_0 j_0 j_1 j_2 j_3 material_length_0 nlen_0 )
		)
		( inv-f idBitLength! j! material_length! nlen! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f idBitLength j material_length nlen  )
		( post-f idBitLength j material_length nlen idBitLength_0 j_0 j_1 j_2 j_3 material_length_0 nlen_0 )
	)
))

