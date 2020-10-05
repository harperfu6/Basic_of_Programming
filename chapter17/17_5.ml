type tree_t = Empty (*空の木*)
            | Leaf of int (*葉*)
            | Node of tree_t * int * tree_t (*節*)

(*目的: tree_t型を受け取り，節や葉の値を2倍する*)
(* tree_double : tree_t -> tree_t *)
let rec tree_double t =
  match t with
  | Empty -> Empty
  | Leaf (n) -> Leaf (n*2)
  | Node (t1, n, t2) -> Node (tree_double t1, n*2, tree_double t2)


(*test*)
let test1 = tree_double (Node (Empty, 1, Leaf (4))) = (Node (Empty, 2, Leaf (8)))
