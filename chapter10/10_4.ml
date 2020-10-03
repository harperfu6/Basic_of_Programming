#use "../chapter8/8_3.ml"
(* person_t 型のリストの例 *) 
let lst1 = [] 
let lst2 = [person3] 
let lst3 = [person2; person3] 
let lst4 = [person3; person1; person2] 

(*目的: person_t型昇順リストの適切な位置に，personを差し込む*)
(* person_insert : person_t list -> person_t -> person_t list*)
let rec person_insert lst p =
  match lst with
  | [] -> [p]
  | ({name=n; height=h; weight=w; birth_month=m; birth_day=d; blood_type=b} as f) :: r ->
      if p.name < n then f :: person_insert r p
      else p :: lst

(* テスト *) 
let t1 = person_insert lst2 person2
let test1 = person_insert lst2 person2 = [person3; person3]


(*目的: person_t型リストを受け取り，名前順に整列する*)
(* person_sort : person_t list -> person_t list *)
let rec person_ins_sort lst =
  match lst with
  | [] -> []
  | f::r -> person_insert (person_ins_sort r) f

(* テスト *) 
let test5 = person_ins_sort lst1 = [] 
let test6 = person_ins_sort lst2 = [person3] 
let test7 = person_ins_sort lst3 = [person3; person2] 
let test7 = person_ins_sort lst4 = [person1; person3; person2] 
