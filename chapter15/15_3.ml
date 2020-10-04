(*目的: 2からnまでの自然数リストを受け取り，素数を返す*)
(* エラトステネスのふるい *)
(* sieve : int list -> int list *)
let rec sieve lst =
  match lst with
  | [] -> []
  | f::r -> f :: sieve (List.filter (fun x -> x mod f <> 0) r)


(*テスト*)
let test1 = sieve [2;3;4;5;6;7] = [2;3;5;7]


(*目的: 2以上n以下の整数リストを生成*)
(* two_to_n : int -> int list *)
let two_to_n n =
  let rec loop i =
    if i <= n then i :: loop (i+1) else []
  in
  loop 2

(*テスト*)
let test2 = two_to_n 5 = [2;3;4;5]


(*目的: 自然数nまでの素数リストを返す*)
(* prime : int -> int list *)
let prime n =
  sieve (two_to_n n)


(*テスト*)
let test3 = prime 10 = [2;3;5;7]


