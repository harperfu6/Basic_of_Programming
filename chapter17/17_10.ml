type ekikan_tree_t = Empty
                   | Node of ekikan_tree_t * string * (string * float) list * ekikan_tree_t (*ex: ("茗荷谷", [("新大塚", 1.2); ("後楽園", 1.8)])*)
