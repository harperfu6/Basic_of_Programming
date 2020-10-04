(*目的: 関数を2つ受け取り，合成した関数を返す*)
(* compose -> ('b -> 'c) -> ('b -> 'a) -> ('a -> 'c) *)
let compose f g =
  let c x = f (g x) in
  c

let time2 x = x * 2
let add3 x = x + 3

let test1 = (compose time2 add3) 4 = 14
