#use "17_13.ml"
(*目的: 漢字駅名２つとekikan_tree_t型を受け取り，2駅間の距離を返す*)
(* get_ekikan_kyori -> string -> string -> ekikan_tree_t -> float *)
let rec get_ekikan_kyori eki_kanji1 eki_kanji2 ekikan_tree =
  match ekikan_tree with
  | Empty -> infinity
  | Node (t1, eki, lst, t2) ->
      if eki_kanji1 < eki then get_ekikan_kyori eki_kanji1 eki_kanji2 t1 
      else if eki_kanji1 > eki then get_ekikan_kyori eki_kanji1 eki_kanji2 t2
      else
        let rec iter ilst =
          match ilst with
             | [] -> infinity
             | (t_eki, kyori)::r ->
                 if eki_kanji2 = t_eki then kyori
                 else iter r
        in
        iter lst


(* テスト *) 
let global_ekikan_tree = inserts_ekikan Empty global_ekikan_list 
let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_tree = 1.2 
let test2 = get_ekikan_kyori "茗荷谷" "池袋" global_ekikan_tree = infinity 
let test3 = get_ekikan_kyori "東京" "大手町" global_ekikan_tree = 0.6
