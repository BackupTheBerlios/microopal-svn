
DEF X(b:bool, c:nat, d:bool) : bool == false

DEF TEST(x:bool, y:bool, z:nat, f:nat, h:nat, j:bool) : nat ==
		TEST(false, true, 45,  3, 45, true)

DEF JAN(a:bool) : nat ==
	TEST(a, true, 5, IF 
			a 
			THEN 
			45 
			ELSE 45 FI, 45, true)


DEF MAIN : nat == IF false THEN 5 ELSE 7 FI

