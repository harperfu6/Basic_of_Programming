#use "10_1.ml"
(*目的: 挿入法により整数リストを昇順にする*)
(* ins_sort : int list -> int list *)
let rec ins_sort lst =
  match lst with
  | [] -> []
  | f :: r -> insert (ins_sort r) f

(*テスト*)
let test1 = ins_sort [5;3;8;1;7;4] = [1;3;4;5;7;8]
