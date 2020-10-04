#use "../chapter10/10_10.ml" (* romaji_to_kanji *)
#use "../chapter16/16_4.ml" (* romaji_to_kanji *)

(* ライブラリの2重読み込みはエラーになることに注意*)
(* よって下記で定義する *)
let make_initial_eki_list lst ekimei_kanji =
  List.map (fun ekimei ->
    if ekimei.kanji = ekimei_kanji
    then {name=ekimei_kanji; minimum_kyori=0.; confirmed_list=[ekimei_kanji]}
    else {name=ekimei.kanji; minimum_kyori=infinity; confirmed_list=[]}
  ) lst

(*目的: 終点駅を受け取り，eki_t型駅を返す*)
(* find : string -> eki_t *)
let rec find eki_k eki_lst =
  match eki_lst with
  | [] -> {name=""; minimum_kyori=infinity; confirmed_list=[]}
  | f::r ->
      if f.name = eki_k then f
      else find eki_k r

(*目的: 始点と終点のローマ字駅を受け取り，eki_t型終点駅を返す*)
(* dijkstra : string -> string -> eki_t *)
let dijkstra kiten_r shuten_r =
  let kiten = romaji_to_kanji kiten_r global_ekimei_list in
  let shuten = romaji_to_kanji shuten_r global_ekimei_list in
  let eki_lst = make_initial_eki_list global_ekimei_list kiten in
  let eki_lst2 = dijkstra_main eki_lst global_ekikan_list in
  find shuten eki_lst2



(* テスト *) 
let test1 = dijkstra "shibuya" "gokokuji" = 
  {name = "護国寺"; minimum_kyori = 9.8; 
   confirmed_list = 
     ["護国寺"; "江戸川橋"; "飯田橋"; "市ヶ谷"; "麹町"; "永田町"; 
      "青山一丁目"; "表参道"; "渋谷"]} 
let test2 = dijkstra "myogadani" "meguro" = 
  {name = "目黒"; minimum_kyori = 12.7000000000000028; 
   confirmed_list = 
     ["目黒"; "白金台"; "白金高輪"; "麻布十番"; "六本木一丁目"; "溜池山王"; 

      "永田町"; "麹町"; "市ヶ谷"; "飯田橋"; "後楽園"; "茗荷谷"]} 

(* 最短距離が 12.7 にならないのは、小数を２進数で表現するときの誤差のため。 
   ここではテスト結果も書いたが、これをテスト作成時に予想するのは無理なので 
   テストとして書く意味はあまりない。*) 
