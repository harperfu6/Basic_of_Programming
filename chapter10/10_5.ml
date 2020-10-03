(*目的: 学生リストの中から最高得点の人を返す*)
(* gakusei_max : gakusei_t list -> gakusei_t *)
type gakusei_t = {
  name : string; (*名前*)
  score : int; (*得点*)
  seiseki: string; (*成績*)
}

(* 学生のデータの例 *) 
let gakusei1 = {name="nakamura"; score=90; seiseki="A"} 
let gakusei2 = {name="miyahara"; score=80; seiseki="A"} 
let gakusei3 = {name="sato"; score=75; seiseki="B"} 
let gakusei4 = {name="idehara"; score=70; seiseki="B"} 
let gakusei5 = {name="tsubata"; score=65; seiseki="C"} 
let gakusei6 = {name="asai"; score=60; seiseki="C"} 

(* 学生のリストの例 *) 
let lst1 = [gakusei2] 
let lst2 = [gakusei3; gakusei4] 
let lst3 = [gakusei4; gakusei3] 
let lst4 = [gakusei4; gakusei1; gakusei6; gakusei5; gakusei2; gakusei3] 

let rec gakusei_max lst =
  match lst with
  | [] -> {name=""; score=min_int; seiseki=""}
  | f::r -> if f.score > (gakusei_max r).score then f
            else gakusei_max r


(* テスト *) 
let test1 = gakusei_max lst1 = gakusei2 
let test2 = gakusei_max lst2 = gakusei3 
let test3 = gakusei_max lst3 = gakusei3 
let test4 = gakusei_max lst4 = gakusei1
