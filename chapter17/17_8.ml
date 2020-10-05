type tree_t = Empty (*空の木*)
            | Leaf of int (*葉*)
            | Node of tree_t * int * tree_t (*節*)

(*目的: tree_t型を受け取り，深さを返す*)
(* tree_depth : tree_t -> int *)
let rec tree_depth t =
  match t with
  | Empty -> 0
  | Leaf (n) -> 0
  | Node (t1, n, t2) -> 1 + max (tree_depth t1) (tree_depth t2)


(*test*)
let test1 = tree_depth (Node (Empty, 1, Leaf (4))) = 2
