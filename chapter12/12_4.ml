#use "../chapter8/8_5.ml"

let ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"} 
] 

(*目的: ソート済ekimei_t型リストに対し，要素を与え適切な位置（ひらがな順）に配置されたekimei_t型を返す*)
(* insert_sort_kana : ekimei_t list -> string -> ekimei_t list*)
let rec insert_sort_kana lst ekimei =
  match lst with
  | [] -> [ekimei]
  | f :: r ->
      if f.kana < ekimei.kana then f :: insert_sort_kana r ekimei
      else ekimei :: lst

(*テスト*)
let test1 = insert_sort_kana ekimei_list {kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}

(*目的: ekimei_t型リストを受け取り，ひらがな順に整列する*)
(* arrange -> ekimei_t list -> ekimei_t list *)
let rec arrange lst =
  match lst with
  | [] -> []
  | f::r -> insert_sort_kana (arrange r) f


let test3 = arrange [] = [] 
let t4 = arrange ekimei_list
let test4 = arrange ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"} 
]
