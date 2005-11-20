-- Integer square root calculation

-- Stephan Frank
-- Find your (integer square) roots!
-- alles etwas clumsy durch das Fehlen des LET-Konstrukts aber es scheint
-- zu laufen

-- central (driver) function
-- integer square-root: with summing terms method - O( sqrt N )
--                      with newton's method - O( log2 N )
-- newton-parameter: 'true' for newton's method, 'false' for summing terms

-- Note: although newton's method is slightly faster than 
--       the summing terms the latter one yields results for greater 
--       input values since it doesn't use multiplication and hence 
--       avoids overflows
DEF isqrt(n:nat, newton:bool):nat ==
	IF lt(n, 2) THEN n ELSE
		IF newton THEN
			hlpnewtonsqrt(n, 0, n)
		ELSE
			hlpisqrt(n, 1, 4, 5)
		FI
	FI

-- help function for summing the terms
-- central algorithm for the summing terms method
DEF hlpisqrt(n:nat, nn:nat, u:nat, v:nat):nat ==
	IF or(lt(u, n), eq(u, n)) THEN 
		hlpisqrt(n, add(nn, 1), add(u, v), add(v, 2))
	ELSE
		nn	
	FI

-- newton's method algorithm
DEF hlpnewtonsqrt(n:nat, low:nat, high:nat):nat ==
	IF lt(add(low, 1), high) THEN
	   IF lt(n, mul(div(add(high,low), 2), div(add(high,low), 2))) THEN
	   	hlpnewtonsqrt(n, low, div(add(high,low), 2))
	   ELSE
	   	hlpnewtonsqrt(n, div(add(high,low), 2), high)
	   FI
	ELSE
	   IF eq(n, mul(div(add(high,low), 2), div(add(high,low), 2))) THEN
	   	div(add(high,low),2)
	   ELSE
	   	low
	   FI
	FI

-- Note: - newtons method allows input values up to about 92600; after that
--         you'll get an overflow during the multiplication
-- Main (as stated)
DEF MAIN:nat == isqrt(9999999, false)
