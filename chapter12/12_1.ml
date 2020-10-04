(*距離計測アルゴリズムにて現在の最短距離/最短経路を保持するためのもの*)
type eki_t = {
  name : string; (*駅名漢字*)
  minimum_kyori : float; (*最短距離*)
  confirmed_list : string list; (*確認済みの駅名漢字リスト*)
}
