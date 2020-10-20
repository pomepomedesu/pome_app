
# ポメラニアンTweet

# 概要
自分の好きなポメラニアンの画像をポメラニアン好きの人たちと共有するアプリ

# 本番環境


# テーブル設計

## users テーブル

| Column        | Type   | Options                        |
| ------------- | ------ | ------------------------------ |
| name          | string | null: false                    |
| email         | string | null: false                    |
| password      | string | null: false                    |
| like_color_id | integer| null: false, foreign_key: true |
| a_word        | string | null: false                    |

### Association

- has_many :pomes
- has_many :comments

## pomes テーブル

| Column   | Type       | Options                        |
| -------- | ------     | ------------------------------ |
| user     | references | null: false, foreign_key: true |
| writings | text       | null: false                    | 
| name     | string     | null: false                    |

### Association

- has_many :comments
- has_many :tags, through: pome_tags
- belongs_to :user

##  commentsテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| pome    | references | null: false, foreign_key: true |

### Association

- belongs_to :pomes
- belongs_to :user


