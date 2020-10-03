#use "../chapter9/9_10.ml"

(*目的: ekikan_t型リストと駅名１つを受け取り，駅間距離を返す*)
(* get_ekikan_kyori : string -> string -> ekikan_t list -> float *)
let rec get_ekikan_kyori ekimei1 ekimei2 lst =
  match lst with
  | [] -> infinity
  | f::r -> if (f.kiten = ekimei1 && f.shuten = ekimei2) || (f.shuten = ekimei1 && f.kiten = ekimei2) then f.kyori
            else get_ekikan_kyori ekimei1 ekimei2 r

(*テスト*)
let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2 
let test2 = get_ekikan_kyori "茗荷谷" "池袋" global_ekikan_list = infinity 
let test3 = get_ekikan_kyori "東京" "大手町" global_ekikan_list = 0.6
