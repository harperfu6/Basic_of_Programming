#use "10_10.ml"
#use "10_11.ml"
(*目的: ローマ字の駅名２つを受け取り，その距離を指定文字列で返答する*)
(* kyori_wo_hyoji : string -> string -> string *)
let kyori_wo_hyoji ekimei_romaji1 ekimei_romaji2 =
  let ekimei_kanji1 = romaji_to_kanji ekimei_romaji1 global_ekimei_list in
  let ekimei_kanji2 = romaji_to_kanji ekimei_romaji2 global_ekimei_list in
  let kyori = get_ekikan_kyori ekimei_kanji1 ekimei_kanji2 global_ekikan_list in
  if ekimei_kanji1 = "" then ekimei_romaji1 ^ " という駅は存在しません"
  else if ekimei_kanji2 = "" then ekimei_romaji2 ^ " という駅は存在しません"
  else if kyori = infinity then ekimei_kanji1 ^ "と" ^ ekimei_kanji2 ^ "はつながっていません"
  else ekimei_kanji1 ^ "から" ^ ekimei_kanji2 ^ "までは " ^ string_of_float kyori ^ " キロです"


(* テスト *) 
let test1 = kyori_wo_hyoji "myougadani" "shinotsuka" 
	    = "myougadani という駅は存在しません" 
let test1 = kyori_wo_hyoji "myogadani" "shinotsuka" 
	    = "茗荷谷から新大塚までは 1.2 キロです" 
let test1 = kyori_wo_hyoji "myogadani" "ikebukuro" 
	    = "茗荷谷と池袋はつながっていません" 
let test1 = kyori_wo_hyoji "tokyo" "ootemachi" 
	    = "ootemachi という駅は存在しません" 
let test1 = kyori_wo_hyoji "tokyo" "otemachi" 
	    = "東京から大手町までは 0.6 キロです" 
