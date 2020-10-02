(*目的: 名前と成績の組みを渡すと，その評価文を返す*)
(* seiseki : (string, string) -> string *)
let seiseki (name, score) =
  name ^ "さんの成績は " ^ score ^ " です。"

(* テスト *) 
let test1 = seiseki ("浅井", "C") = "浅井さんの成績は C です。"
let test2 = seiseki ("中村", "A") = "中村さんの成績は A です。"
let test3 = seiseki ("出原", "B") = "出原さんの成績は B です。"
