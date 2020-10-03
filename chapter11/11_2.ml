(*目的: 下記漸化式を求める*)
(*
 * a_0 = 3
 * a_n = 2 * a_n_1 - 1
 * *)
(* a : int -> int *)
let rec a n =
  match n with
  | 0 -> 3
  | _ -> 2 * a (n-1) - 1

(* テスト *) 
let test1 = a 0 = 3 
let test2 = a 1 = 5 
let test3 = a 2 = 9 
let test4 = a 3 = 17 
let test5 = a 4 = 33
