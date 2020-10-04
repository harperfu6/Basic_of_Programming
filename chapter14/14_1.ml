let is_even x = x mod 2 = 0
let even lst = List.filter is_even lst

(*テスト*)
let test1 = even [1;2;3;4] = [2;4]
