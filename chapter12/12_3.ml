#use "12_1.ml"
(*目的: 起点駅名（漢字）を受け取り，confirmed_listとminimum_kyoriを初期化したeki_t型リストを返す*)
(* initialize : eki_t list -> ekimei_kanji -> eki_t list*)
let rec initialize lst ekimei_kanji =
  match lst with
  | [] -> []
  | ({name=n; minimum_kyori=mk; confirmed_list=cl} as f)::r ->
      if n = ekimei_kanji then {name=n; minimum_kyori=0.; confirmed_list=[n]} :: initialize r ekimei_kanji
      else f:: initialize r ekimei_kanji


(*テスト*) 
let eki_list = [ 
{name="池袋"; minimum_kyori = infinity; confirmed_list = []}; 
{name="新大塚"; minimum_kyori = infinity; confirmed_list = []}; 
{name="茗荷谷"; minimum_kyori = infinity; confirmed_list = []}; 
{name="後楽園"; minimum_kyori = infinity; confirmed_list = []}; 
{name="本郷三丁目"; minimum_kyori = infinity; confirmed_list = []}; 
{name="御茶ノ水"; minimum_kyori = infinity; confirmed_list = []} 
] 


let test1 = initialize [] "茗荷谷" = [] 
let test2 = initialize eki_list "茗荷谷" = [ 
{name="池袋"; minimum_kyori = infinity; confirmed_list = []}; 
{name="新大塚"; minimum_kyori = infinity; confirmed_list = []}; 
{name="茗荷谷"; minimum_kyori = 0.; confirmed_list = ["茗荷谷"]}; 
{name="後楽園"; minimum_kyori = infinity; confirmed_list = []}; 
{name="本郷三丁目"; minimum_kyori = infinity; confirmed_list = []}; 
{name="御茶ノ水"; minimum_kyori = infinity; confirmed_list = []} 
]
