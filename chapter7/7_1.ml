(*目的: 5教科の得点を渡すと，合計と平均の組みを返す*)
(* goukei_to_heikin : int -> int -> int -> int -> int -> int * int *)
let goukei_to_heikin kokugo suugaku eigo rika shakai =
  let sum = kokugo + suugaku + eigo + rika + shakai in
  (sum, sum / 5)


(* テスト *) 
let test1 = goukei_to_heikin 80 100 90 85 75 = (430, 86)
let test2 = goukei_to_heikin 90 70 95 65 90 = (410, 82)
let test3 = goukei_to_heikin 60 50 70 55 65 = (300, 60)
