#use "../chapter10/10_11.ml"
#use "../chapter12/12_1.ml"
(*目的: 直前に確定したeki_t型と未確定駅eki_t型リストおよびekitan_t型リストを受け取り，必要な更新処理をした上で未確定駅eki_t型リストを返す*)
(* update : eki_t -> eki_t list -> ekitan_t list -> eki_t list *)

let update p v ekikan_l =
  List.map (fun q -> 
    match (p, q) with
    ({name=pn;minimum_kyori=pm;confirmed_list=pc},
     {name=qn;minimum_kyori=qm;confirmed_list=qc}) ->
     let kyori = get_ekikan_kyori pn qn ekikan_l in
     if kyori = infinity then q
     else if qm > pm +. kyori then {name=qn; minimum_kyori=pm +. kyori; confirmed_list=qn::pc}
     else q
  ) v


(* 駅の例 *) 
let eki1 = {name="池袋"; minimum_kyori = infinity; confirmed_list = []} 
let eki2 = {name="新大塚"; minimum_kyori = 1.2; confirmed_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {name="茗荷谷"; minimum_kyori = 0.; confirmed_list = ["茗荷谷"]} 
let eki4 = {name="後楽園"; minimum_kyori = infinity; confirmed_list = []} 
 
(* 駅リストの例 *) 
let lst = [eki1; eki2; eki3; eki4] 
 
(* テスト *) 
let test1 = update eki2 [] global_ekikan_list = [] 
let test2 = update eki2 lst global_ekikan_list = 
 [{name="池袋"; minimum_kyori = 3.0; confirmed_list = ["池袋"; "新大塚"; "茗荷谷"]}; 
  eki2; eki3; eki4]
