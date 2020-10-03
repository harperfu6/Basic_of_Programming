#use "../chapter8/8_3.ml"
(*目的: person_t型データリストを受け取り，A型の人の数を返す*)
(* count_blood_A : person_t list -> int *)
let rec count_blood_A lst =
  match lst with
  | [] -> 0
  | {name = n; height = h; weight = w; birth_month = m; birth_day = d; blood_type = b} :: r ->
      if b = "A" then 1 + count_blood_A r
      else count_blood_A r

let lst1 = []
let lst2 = [person1]
let lst3 = [person2]
let lst4 = [person1; person2; person3]
let lst5 = [person2; person1; person1]

(* テスト *) 
let test1 = count_blood_A lst1 = 0 
let test2 = count_blood_A lst2 = 1 
let test3 = count_blood_A lst3 = 0 
let test4 = count_blood_A lst4 = 1 
let test5 = count_blood_A lst5 = 2
