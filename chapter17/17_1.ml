type nengou_t = Meiji of int (*明治*)
              | Taisho of int (*大正*)
              | Showa of int (*昭和*)
              | Heisei of int (*平成*)

(*目的: nengou_t型を受け取り，西暦を返す*)
(* to_seireki : nengou_t -> int *)
let to_seireki n =
  match n with
  | Meiji (n) -> n + 1867
  | Taisho (n) -> n + 1911
  | Showa (n) -> n + 1925
  | Heisei (n) -> n + 1988

(*目的: 誕生年と現在の年それぞれnengou_t型で受け取り，年齢を返す*)
(* nenrei : nengou_t -> nengout_t -> int *)
let nenrei b_n n_n =
  (to_seireki n_n) - (to_seireki b_n)


(*test*)
let test1 = nenrei (Heisei (3)) (Heisei (30)) = 27
