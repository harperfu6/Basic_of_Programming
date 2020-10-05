(*目的: 駅名と連想リストを受け取り，対応する距離を返す*)
(* assoc : string -> (string * float) list -> float *)
let rec assoc eki ass_lst =
  match ass_lst with
  | [] -> infinity
  | (eki_k, kyori)::r ->
      if eki = eki_k then kyori
      else assoc eki r

(*test*)
let test1 = assoc "後楽園" [("新大塚", 1.2); ("後楽園", 1.8)] = 1.8
