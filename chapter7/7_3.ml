(*目的: 座標を受け取るとx軸に対称な点を返す*)
(* taisho_x float * float -> float * float *)
let taisho_x point =
  match point with
  | (x, y) -> (x, -. y)


(* テスト *) 
let test1 = taisho_x (0.0, 0.0) = (0.0, 0.0)
let test2 = taisho_x (2.3, 5.1) = (2.3, -5.1)
let test3 = taisho_x (-3.8, -2.4) = (-3.8, 2.4)
