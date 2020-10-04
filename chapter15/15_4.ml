#use "../chapter12/12_1.ml"
(* 駅の例 *) 
let eki1 = {name="池袋"; minimum_kyori = infinity; confirmed_list = []} 
let eki2 = {name="新大塚"; minimum_kyori = 1.2; confirmed_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {name="茗荷谷"; minimum_kyori = 0.; confirmed_list = ["茗荷谷"]} 
let eki4 = {name="後楽園"; minimum_kyori = infinity; confirmed_list = []} 
 
(* 駅リストの例 *) 
let lst = [eki1; eki2; eki3; eki4] 


(*目的: eki_t型リストを受け取り，最短距離のeki_tを返す*)
(*minimum : eki_t list -> eki_t *)
let rec minimum lst =
  match lst with
  | [] -> {name=""; minimum_kyori=infinity; confirmed_list=[]}
  | f::r ->
      let eki_min = minimum r in
      if f.minimum_kyori < eki_min.minimum_kyori then f
      else eki_min

(* テスト *) 
let test0 = minimum lst = eki3

(*目的: eki_t型リストを受け取り，最短距離最小の駅とそれ以外の駅からなるリストの組を返す*)
(* divide_minimum : eki_t list -> eki_t * eki_t list *)
let divide_minimum lst =
  match lst with
  | [] -> ({name=""; minimum_kyori=infinity; confirmed_list=[]}, [])
  | _ ->
      let eki_min = minimum lst in
      (eki_min, List.filter (fun eki -> eki <> eki_min) lst)

 
(* テスト *) 
let test = divide_minimum lst = (eki3, [eki1; eki2; eki4]) 
