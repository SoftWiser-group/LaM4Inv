(set-logic LIA)

( declare-const count Int )
( declare-const count! Int )
( declare-const exp Int )
( declare-const exp! Int )
( declare-const result Int )
( declare-const result! Int )
( declare-const term Int )
( declare-const term! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const count_0 Int )
( declare-const count_1 Int )
( declare-const exp_0 Int )
( declare-const exp_1 Int )
( declare-const exp_2 Int )
( declare-const exp_3 Int )
( declare-const result_0 Int )
( declare-const result_1 Int )
( declare-const term_0 Int )
( declare-const term_1 Int )
( declare-const term_2 Int )
( declare-const term_3 Int )
( declare-const x_0 Int )

( define-fun inv-f( ( count Int )( exp Int )( result Int )( term Int )( x Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( count Int )( exp Int )( result Int )( term Int )( x Int )( tmp Int )( count_0 Int )( count_1 Int )( exp_0 Int )( exp_1 Int )( exp_2 Int )( exp_3 Int )( result_0 Int )( result_1 Int )( term_0 Int )( term_1 Int )( term_2 Int )( term_3 Int )( x_0 Int ) ) Bool
	( and
		( = count count_1 )
		( = exp exp_1 )
		( = result result_1 )
		( = term term_1 )
		( = x x_0 )
		( > x_0 -1.000000 )
		( < x_0 1.000000 )
		( = exp_1 1.000000 )
		( = term_1 1.000000 )
		( = count_1 1 )
		( = result_1 ( * 2 ( / 1 ( - 1 x_0 ) ) ) )
	)
)

( define-fun trans-f ( ( count Int )( exp Int )( result Int )( term Int )( x Int )( tmp Int )( count! Int )( exp! Int )( result! Int )( term! Int )( x! Int )( tmp! Int )( count_0 Int )( count_1 Int )( exp_0 Int )( exp_1 Int )( exp_2 Int )( exp_3 Int )( result_0 Int )( result_1 Int )( term_0 Int )( term_1 Int )( term_2 Int )( term_3 Int )( x_0 Int ) ) Bool
	( or
		( and
			( = exp_2 exp )
			( = term_2 term )
			( = exp_2 exp! )
			( = term_2 term! )
			( = count count! )
			( = exp exp! )
			( = result result! )
			( = term term! )
			( = x x! )
			(= tmp tmp! )
		)
		( and
			( = exp_2 exp )
			( = term_2 term )
			( = term_3 ( * term_2 ( / x_0 count_1 ) ) )
			( = exp_3 ( + exp_2 term_3 ) )
			( = exp_3 exp! )
			( = term_3 term! )
			(= count count_1 )
			(= count! count_1 )
			(= result result_1 )
			(= result! result_1 )
			(= x x_0 )
			(= x! x_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( count Int )( exp Int )( result Int )( term Int )( x Int )( tmp Int )( count_0 Int )( count_1 Int )( exp_0 Int )( exp_1 Int )( exp_2 Int )( exp_3 Int )( result_0 Int )( result_1 Int )( term_0 Int )( term_1 Int )( term_2 Int )( term_3 Int )( x_0 Int ) ) Bool
	( or
		( not
			( and
				( = count count_1)
				( = exp exp_2)
				( = result result_1)
				( = term term_2)
				( = x x_0)
			)
		)
		( not
			( and
				( not ( >= result_1 exp_2 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f count exp result term x tmp count_0 count_1 exp_0 exp_1 exp_2 exp_3 result_0 result_1 term_0 term_1 term_2 term_3 x_0  )
		( inv-f count exp result term x tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f count exp result term x tmp )
			( trans-f count exp result term x tmp count! exp! result! term! x! tmp! count_0 count_1 exp_0 exp_1 exp_2 exp_3 result_0 result_1 term_0 term_1 term_2 term_3 x_0 )
		)
		( inv-f count! exp! result! term! x! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f count exp result term x tmp  )
		( post-f count exp result term x tmp count_0 count_1 exp_0 exp_1 exp_2 exp_3 result_0 result_1 term_0 term_1 term_2 term_3 x_0 )
	)
))

