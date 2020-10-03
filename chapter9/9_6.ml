(*目的: リストの要素を前からくっつける*)
(* concat : string list -> string *)
let rec concat lst =
  match lst with
  | [] -> ""
  | f :: r -> f ^ concat r


(* テスト *) 
let test1 = concat [] = "" 
let test2 = concat ["春"] = "春" 
let test3 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬" 
