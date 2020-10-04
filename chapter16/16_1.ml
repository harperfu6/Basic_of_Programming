(*目的: 整数リストを受け取り，それまでの数の合計のリストを返す*)
(* sum_list -> int list -> int list *)
let sum_list lst =
  let rec inter lst acc =
    match lst with
    | [] -> []
    | f::r ->
        let sum = f + acc in
        sum :: inter r sum
  in
  inter lst 0

(*test*)
let test1 = sum_list [3;2;1;4] = [3;5;6;10]
