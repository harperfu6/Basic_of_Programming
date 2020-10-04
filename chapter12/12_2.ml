#use "../chapter8/8_5.ml"
#use "12_1.ml"

(*目的: ekimei_t型リストを受け取り，eki_t型リストを作る*)
(* make_eki_list : ekimei_t list -> eki_t list*)
let rec make_eki_list lst =
  match lst with
  | [] -> []
  | {kanji=k; kana=a; romaji=r; shozoku=s} :: rest -> {name=k; minimum_kyori=infinity; confirmed_list=[]} :: make_eki_list rest


(* テスト *) 
let ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"} 
] 
 
let test1 = make_eki_list [] = [] 
let test2 = make_eki_list ekimei_list = [ 
{name="池袋"; minimum_kyori = infinity; confirmed_list = []}; 
{name="新大塚"; minimum_kyori = infinity; confirmed_list = []}; 
{name="茗荷谷"; minimum_kyori = infinity; confirmed_list = []}; 
{name="後楽園"; minimum_kyori = infinity; confirmed_list = []}; 
{name="本郷三丁目"; minimum_kyori = infinity; confirmed_list = []}; 
{name="御茶ノ水"; minimum_kyori = infinity; confirmed_list = []} 
]
