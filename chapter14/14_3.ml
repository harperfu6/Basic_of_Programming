let append_string n acc = n ^ acc

(*目的: リストの要素を前からくっつける*)
(* concat : string list -> string *)
let concat lst = List.fold_right append_string lst ""


(* テスト *) 
let test1 = concat [] = "" 
let test2 = concat ["春"] = "春" 
let test3 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬" 
