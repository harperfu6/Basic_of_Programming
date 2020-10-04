(*目的: 自然数m,n(m>n)のgcdを求める*)
(* gcd: int -> int -> int*)
let rec gcd m n =
  match (m, n) with
  | (_,0) -> m
  | _ -> gcd n (m mod n)


(*テスト*)
let test1 = gcd 15 36 = 3
