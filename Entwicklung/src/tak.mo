-- tak Benchmark from Gabriel Benchmarks
DEF tak(x:nat,y:nat,z:nat):nat ==
  IF not(lt(y,x)) THEN z
  ELSE
    tak(tak(sub(x,1),y,z),
        tak(sub(y,1),z,x),
	tak(sub(z,1),x,y))
  FI

DEF MAIN:nat == tak(18,12,6)
