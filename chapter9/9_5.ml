(*目的: リストから偶数の要素を返す*)
(* even : int list -> int list *)
let rec even lst =
  match lst with
  | [] -> []
  | f :: r -> if f mod 2 = 0 then f :: even r
              else even r


(* テスト *) 
let test1 = even [] = [] 
let test2 = even [3] = [] 
let test3 = even [2] = [2] 
let test4 = even [2; 1; 6; 4; 7] = [2; 6; 4] 
let test5 = even [1; 2; 6; 4; 7] = [2; 6; 4]
