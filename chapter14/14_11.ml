#use "../chapter8/8_5.ml"
#use "12_1.ml"

(*目的: ekimei_t型リストを受け取り，eki_t型リストを作る*)
(* make_eki_list : ekimei_t list -> eki_t list*)
let make_eki_list lst =
  List.map (fun x -> {name=x.kanji; minimum_kyori=infinity; confirmed_list=[]}) lst

(*目的: 起点駅名（漢字）を受け取り，confirmed_listとminimum_kyoriを初期化したeki_t型リストを返す*)
(* initialize : eki_t list -> ekimei_kanji -> eki_t list*)
let initialize lst ekimei_kanji =
  List.map (fun x -> if x.name = ekimei_kanji then {name=n; minimu_kyori=0.; confirmed_list=[n] else x} lst 




