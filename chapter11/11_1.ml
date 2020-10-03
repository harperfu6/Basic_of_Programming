(*目的: 受け取った自然数までの0からの２乗和*)
(* sum_of_square : int -> int*)
let rec sum_of_square n =
  match n with
  | 0 -> 0
  | _ -> n * n + sum_of_square (n-1)

(*テスト*)
let test1 = sum_of_square 4 = 30
