# README



# テーブル設計

## users テーブル(ユーザー情報)(deviceを使う)

| Column              | Type   | Options                       |
| ------------------- | ------ | ----------------------------- |
| nick_name           | string | null: false                   |
| email               | string | null: false, unique: true     |
| encrypted_password  | string | null: false                   |
| city_id             | string | null: false                   |
| first_name          | string | null: false                   |
| last_name           | string | null: false                   |
| read_first          | string | null: false                   |
| read_last           | string | null: false                   |

### Association

- has_many :items
- has_many :orders

## messages テーブル(受取先情報)

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| user            | references | null: false, foreign_key: true |
| text            | string     | null: false                    |
| prefecture_id   | integer    | null: false                    |
| city            | string     | null: false                    |


### Association

- belongs_to :order

## user_rooms テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user_id     | references | null: false, foreign_key: true |
| rooms       | references | null: false, foreign_key: true |
### Association

- belongs_to :user
- belongs_to :item
- has_one    :address

## items テーブル(出品情報)

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| user                | references | null: false, foreign_key: true |
| product_name        | string     | null: false                    |
| product_description | text       | null: false                    |
| category_id         | integer    | null: false                    |
| condition_id        | integer    | null: false                    |
| prefecture_id       | integer    | null: false                    |
| shipping_day_id     | integer    | null: false                    |
| shipping_cost_id    | integer    | null: false                    |
| price               | integer    | null: false                    |


### Association

- has_one :order
- belongs_to :user
