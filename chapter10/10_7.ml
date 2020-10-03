#use "../chapter8/8_3.ml"
(*目的: person_t型リストを受け取り，各血液型の人数リストを返す*)
(* blood_shukei : person_t list -> int * int * int * int *)
let rec blood_shukei lst =
  match lst with
  | [] -> (0,0,0,0)
  | {name=n; height=h; weight=w; birth_month=m; birth_day=d; blood_type=t}::r ->
      let (a, o, b, ab) = blood_shukei r in
      if t = "A" then (a+1, o, b, ab)
      else if t = "O" then (a, o+1, b, ab)
      else if t = "B" then (a, o, b+1, ab)
      else (a, o, b, ab+1)

(* person_t list 型のデータの例 *) 
let lst1 = [] 
let lst2 = [person1] 
let lst3 = [person2] 
let lst4 = [person1; person2; person3] 
let lst5 = [person2; person1; person1] 

 (* テスト *) 
let test1 = blood_shukei lst1 = (0, 0, 0, 0) 
let test2 = blood_shukei lst2 = (1, 0, 0, 0) 
let test3 = blood_shukei lst3 = (0, 0, 1, 0) 
let test4 = blood_shukei lst4 = (1, 1, 1, 0) 
let test5 = blood_shukei lst5 = (2, 0, 1, 0) 
