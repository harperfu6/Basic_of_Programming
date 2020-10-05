type tree_t = Empty (*空の木*)
            | Leaf of int (*葉*)
            | Node of tree_t * int * tree_t (*節*)

(*目的: 関数f(int -> int)とtree_t型を受け取り，節や葉の値にfを適用する*)
(* tree_map : (int -> int) -> tree_t -> tree_t *)
let rec tree_length t =
  match t with
  | Empty -> 0
  | Leaf (n) -> 1
  | Node (t1, n, t2) -> tree_length t1 + 1 + tree_length t2


(*test*)
let test1 = tree_length (Node (Empty, 1, Leaf (4))) = 2
