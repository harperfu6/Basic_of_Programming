#use "10_7.ml"
(*目的: person_t型リストを受け取り，最も人数の多かった血液型を返す*)
(* max_blood : person_t list -> string *)
let max_blood lst =
  let (a, o, b, ab) = blood_shukei lst in
  let max_blood = max a (max o (max b ab)) in
  if max_blood = a then "A"
  else if max_blood = o then "O"
  else if max_blood = b then "B"
  else "AB"


(*テスト*)
let test10 = max_blood lst1 = "A"
let test11 = max_blood lst2 = "A"
let test12 = max_blood lst3 = "B"
let test13 = max_blood lst5 = "A"
