#use "../chapter12/12_1.ml"
(* 駅の例 *) 
let eki1 = {name="池袋"; minimum_kyori = infinity; confirmed_list = []} 
let eki2 = {name="新大塚"; minimum_kyori = 1.2; confirmed_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {name="茗荷谷"; minimum_kyori = 0.; confirmed_list = ["茗荷谷"]} 
let eki4 = {name="後楽園"; minimum_kyori = infinity; confirmed_list = []} 
 
(* 駅リストの例 *) 
let lst = [eki1; eki2; eki3; eki4] 


(*目的: eki_t型リストを受け取り，最短距離のeki_tを返す*)
(* divide_minimum : eki_t list -> eki_t *)
let divide_minimum lst =
  List.fold_right
  (fun eki (p, v) ->
    if p.name = "" then (eki, v) (*初期pを先頭で更新する*)
    else if eki.minimum_kyori < p.minimum_kyori then (eki, p :: v)
    else (p, eki :: v)
  )
  lst
  ({name=""; minimum_kyori=infinity; confirmed_list=[]}, [])

 
(* テスト *) 
let test = divide_minimum lst = (eki3, [eki1; eki2; eki4]) 
