(*目的: リストの長さを返す*)
(* length_list : 'a list -> int *)
let rec length_list lst =
  match lst with
  | [] -> 0
  | f::r -> 1 + length_list r

(*テスト*)
let t1 = length_list [] = 0
let t2 = length_list [1;2] = 2


(*目的: 2つのリストを受け取り，長さが等しいか判定する*)
(* equal_length : 'a list -> 'a list -> bool *)
let equal_length ls1 ls2 =
  match (ls1, ls2) with
  | ([], []) -> true
  | (f::r, []) -> false
  | ([], f::r) -> false
  | _ ->
      let l1 = length_list ls1 in
      let l2 = length_list ls2 in
      if l1 = l2 then true
      else false


(* テスト *) 
let test1 = equal_length [] [] = true 
let test2 = equal_length [] [1; 2] = false 
let test3 = equal_length [1; 2] [] = false 
let test4 = equal_length [1; 3] [2; 4] = true 
let test5 = equal_length ["a"; "b"; "c"; "d"] [1; 3] = false 
let test6 = equal_length ["a"; "b"; "c"; "d"] [1; 3; 2; 4] = true 
