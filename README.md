# テーブル設計

## users テーブル

| Column               | Type   | Options     |
| -------------------- | ------ | ----------- |
| email                | string | null: false |
| password             | string | null: false |
| family_name          | string | null: false |
| last_name            | string | null: false |
| family_name_phonetic | string | null: false |
| last_name_phonetic   | string | null: false |

### Association

- has_many :items

## items テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| name          | string     | null: false                    |
| text          | text       |                                |
| buy_date      | integer    | null: false                    |
| limit_date    | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
