#use "../chapter8/8_3.ml"
(*より一般化したものを作る*)
(*目的: person_t型を受け取り，名前を返す*)
(* take_name: person_t -> string *)
let take_name p = p.name

(*目的: person_t型リストを受け取り，名前リストを返す*)
(* person_name : person_t list -> string list *)
let person_name lst = List.map take_name lst

(*テスト*)
let person_list = [person1;person2;person3]
let test1 = person_name person_list = ["浅井"; "宮原"; "中村"]
