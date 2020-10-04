#use "../chapter10/10_11.ml"
#use "../chapter12/12_1.ml"
(*目的: 直前に確定したeki_t型と未確定eki_t型を受け取り，つながっている場合は必要に応じて最短距離を更新する*)
(* update1 : eki_t -> eki_t -> eki_t *)
let update1 p q =
  match (p, q) with
  ({name=pn;minimum_kyori=pm;confirmed_list=pc},
   {name=qn;minimum_kyori=qm;confirmed_list=qc}) ->
   let kyori = get_ekikan_kyori pn qn global_ekikan_list in
   if kyori = infinity then q
   else if qm > pm +. kyori then {name=qn; minimum_kyori=pm +. kyori; confirmed_list=qn::pc}
   else q

(*ekiの例*)
let eki1 = {name="池袋"; minimum_kyori = infinity; confirmed_list = []} 
let eki2 = {name="新大塚"; minimum_kyori = 1.2; confirmed_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {name="茗荷谷"; minimum_kyori = 0.; confirmed_list = ["茗荷谷"]} 
let eki4 = {name="後楽園"; minimum_kyori = infinity; confirmed_list = []} 

(*テスト*)
let test1 = update1 eki3 eki1 = eki1 
let test2 = update1 eki3 eki2 = eki2 
let test3 = update1 eki3 eki3 = eki3 
let test4 = update1 eki3 eki4 = 
	{name="後楽園"; minimum_kyori = 1.8; confirmed_list = ["後楽園"; "茗荷谷"]} 
let test5 = update1 eki2 eki1 = 
	{name="池袋"; minimum_kyori = 3.0; confirmed_list = ["池袋"; "新大塚"; "茗荷谷"]} 
let test6 = update1 eki2 eki2 = eki2 
let test7 = update1 eki2 eki3 = eki3 
let test8 = update1 eki2 eki4 = eki4
