(*目的: 2点を渡すと中点を返す*)
(* chuten : float * float -> float * float -> float * float *)
let chuten point1 point2 =
  match point1 with
  | (x1, y1) -> (match point2 with
                | (x2, y2) -> (x1 +. x2 /. 2., y1 +. y2 /. 2.))


(* テスト *) 
let test1 = chuten (0.0, 0.0) (1.0, 2.0) = (0.5, 1.0)
let test2 = chuten (2.3, 5.1) (7.6, 1.7) = (4.95, 3.4)
let test3 = chuten (-3.8, -2.4) (3.4, -1.2) = (-0.2, -1.8)
