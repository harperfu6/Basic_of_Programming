#use "5_4.ml"

(*目的: a,b,cを渡すと解の個数を返す*)
(* kai_no_kosuu : float -> float -> float -> int *)
let kai_no_kosuu a b c =
  if hanbetsushiki a b c > 0. then 2
  else if hanbetsushiki a b c = 0. then 1
  else 0


(* テスト *) 
let test1 = kai_no_kosuu 1.0 5.0 4.0 = 2
let test2 = kai_no_kosuu 2.0 (-4.0) 2.0 = 1
let test3 = kai_no_kosuu 1.0 2.0 4.0 = 0
