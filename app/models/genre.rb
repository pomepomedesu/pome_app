class Genre < ActiveHash::Base
  self.data = [
    { id: 0, name: '--'},
    { id: 1, name: "白ポメ"},
    { id: 2, name: "黒ポメ"},
    { id: 3, name: "茶ポメ"},
    { id: 4, name: "オレンジ系ポメ"},
    { id: 5, name: "クリーム系ポメ"},
    { id: 6, name: "パーティーポメ"},
    { id: 7, name: "ウルフセーブルポメ"},
    { id: 8, name: "ベージュポメ"},
    { id: 9, name: "その他ポメ"}
  ]
end
