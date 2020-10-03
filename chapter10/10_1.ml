(*目的: 昇順リストの適切な位置に，nを差し込む*)
(* insert : int list -> int -> int list *)
let rec insert lst n =
  match lst with
  | [] -> [n]
  | f :: r -> if f < n then f :: insert r n
              else n :: lst


(*テスト*)
let test1 = insert [1;3;4;7;8] 5 = [1;3;4;5;7;8]
