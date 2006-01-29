
DEF X(b:bool, c:nat, d:bool) : nat == 7

DEF TEST(x:bool, y:bool, z:nat, f:bool, h:nat, j:bool) : nat ==
		TEST(false, true, 45,  false, 45, true)

DEF JAN(a:bool) : nat ==
	TEST(a, a, 5, a, 5, a)



DEF MAIN : nat == JAN(false)
