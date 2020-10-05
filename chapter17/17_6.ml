type tree_t = Empty (*空の木*)
            | Leaf of int (*葉*)
            | Node of tree_t * int * tree_t (*節*)

(*目的: 関数f(int -> int)とtree_t型を受け取り，節や葉の値にfを適用する*)
(* tree_map : (int -> int) -> tree_t -> tree_t *)
let rec tree_map f t =
  match t with
  | Empty -> Empty
  | Leaf (n) -> Leaf (f n)
  | Node (t1, n, t2) -> Node (tree_map f t1, f n, tree_map f t2)


(*test*)
let test1 = tree_map (fun x -> x*10) (Node (Empty, 1, Leaf (4))) = (Node (Empty, 10, Leaf (40)))
