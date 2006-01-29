
DEF X(b:bool, c:nat, d:bool) : nat == 7

DEF TEST(x:bool, y:bool, z:nat, f:bool, h:nat, j:bool) : nat ==
		TEST(false, true, 45,  false, 45, true)

DEF JAN(a:bool) : nat ==
	TEST(a, true, 5, IF a THEN true ELSE a FI, 45, true)


DEF MAIN : nat == JN(false)

