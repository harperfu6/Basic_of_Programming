(*目的: 時間xを受け取っとら午前か午後かを返す*)
(* jikan : int -> string *)
let jikan x =
  if x < 12 then "午前" else "午後"

(*テスト*)
let test1 = jikan 0 = "午前"
let test2 = jikan 10 = "午前"
let test2 = jikan 14 = "午後"
