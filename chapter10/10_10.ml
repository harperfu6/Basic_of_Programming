#use "../chapter9/9_9.ml"

(*目的: ekimei_t型リストとローマ字の駅名を受け取り，漢字表記の駅名を返す*)
(* romaji_to_kanji : string -> ekimei_t list -> string*)
let rec romaji_to_kanji ekimei_romaji lst =
  match lst with
  | [] -> ""
  | f::r -> if f.romaji = ekimei_romaji then f.kanji
            else romaji_to_kanji ekimei_romaji r

(*テスト*)
let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
