
DEF X(b:bool, c:nat, d:bool) : bool == false

DEF TEST(a:bool, b:bool, c:nat, d:nat, e:nat, f:bool) : nat == 5

DEF JAN(a:bool) : nat ==
	IF false THEN
	TEST(a, true, 5, IF 
			a 
			THEN 
			45 
			ELSE 45 FI, 45, true)
	ELSE
		7
	FI

DEF MAIN : nat == JAN(true)

