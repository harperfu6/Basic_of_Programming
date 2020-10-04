#use "../chapter8/8_5.ml"
#use "../chapter12/12_1.ml"

(* 目的：ekimei list から eki list を作る *) 
(* make_initial_eki_list : ekimei_t list -> string -> eki_t list *)
let make_initial_eki_list lst ekimei_kanji =
  List.map (fun ekimei ->
    if ekimei.kanji = ekimei_kanji
    then {name=ekimei_kanji; minimum_kyori=0.; confirmed_list=[ekimei_kanji]}
    else {name=ekimei.kanji; minimum_kyori=infinity; confirmed_list=[]}
  ) lst



(* 駅名リストの例 *) 
let ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"} 
] 

(* テスト *) 
let test1 = make_initial_eki_list [] "茗荷谷" = [] 
let test2 = make_initial_eki_list ekimei_list "茗荷谷" = [ 
{name="池袋"; minimum_kyori = infinity; confirmed_list = []}; 
{name="新大塚"; minimum_kyori = infinity; confirmed_list = []}; 
{name="茗荷谷"; minimum_kyori = 0.; confirmed_list = ["茗荷谷"]}; 
{name="後楽園"; minimum_kyori = infinity; confirmed_list = []}; 
{name="本郷三丁目"; minimum_kyori = infinity; confirmed_list = []}; 
{name="御茶ノ水"; minimum_kyori = infinity; confirmed_list = []} 
]
