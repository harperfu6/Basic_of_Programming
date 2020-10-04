#use "13_6.ml"
(*目的: 直前に確定したeki_t型と未確定駅eki_t型リストを受け取り，必要な更新処理をした上で未確定駅eki_t型リストを返す*)
(* update : eki_t -> eki_t list -> eki_t list *)
let update p v = List.map (update1 p) v 

(* 駅の例 *) 
let eki1 = {name="池袋"; minimum_kyori = infinity; confirmed_list = []} 
let eki2 = {name="新大塚"; minimum_kyori = 1.2; confirmed_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {name="茗荷谷"; minimum_kyori = 0.; confirmed_list = ["茗荷谷"]} 
let eki4 = {name="後楽園"; minimum_kyori = infinity; confirmed_list = []} 

(* 駅リストの例 *) 
let lst = [eki1; eki2; eki3; eki4] 
 
(* テスト *) 
let test1 = update eki2 [] = [] 
let test2 = update eki2 lst = 
 [{name="池袋"; minimum_kyori = 3.0; confirmed_list = ["池袋"; "新大塚"; "茗荷谷"]}; 
  eki2; eki3; eki4]
