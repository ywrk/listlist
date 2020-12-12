# APP概要
## アプリケーション名
List-list （リストリスト） 
## アプリケーション概要
このアプリケーションでは、タスク管理が出来ます。行動をリスト化することによって、決断の
## URL
未定
## テスト用アカウント
test@mail

## 利用方法
新規リスト作成からリストを作成できます。
## 目指した課題解決
* 優柔不断な性格なため、決めることができない
* 選択肢が多すぎるため、決断疲れが起きている
* 成功の行動パターンを覚えていない
* やることが多すぎて、なにをしたらいいかわからなくなる。めんどくさくなる。
* 習慣にしたいと思っていても忘れてしまう。

## 洗い出した要件
* ログインボタン
* 新規登録ボタン
* ログイン時はログアウトできるボタンが必要
* リストが一覧表示されていて、それぞれボタンになっている
* リストを作成するためのボタンがある
* リストを編集・削除するためのボタンがある
* リストを自動選択するためのボタンがある
（オートセレクト機能を実装予定）


## 実装予定の機能
- ユーザー管理機能
- 一覧表示機能
- 詳細ページ
- 詳細ページ２
- リスト登録機能（投稿）
- リスト編集機能
- リスト共有機能
- オートセレクト機能
- SNS認証
- AWS EC2
## ローカルでの動作方法
1. rails s
2. 

# データベース設計

## users テーブル
| Column | Type | Options |
| -- | -- | -- |
| nickname | string | null: false |
| email | string | null: false |
| encrypted_password | string | null: false |


### Association
- has_many :firstlists
- has_many :secondlists

## firstlists テーブル

| Column | Type | Options |
| --| -- | -- |
| title | string | null: false |
| text1 | string | |
| text2 | string | |
| text3 | string | |
| text4 | string | |
| text5 | string | |
| text6 | string | |
| user | references | null: false, foreign_key: true |
| secondlist | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- has_many :secondlists
## secondlists テーブル

| Column | Type | Options |
| --------------------- | ----------- | ------------------------------- |
| title | string | null: false |
| text2 | string | |
| text3 | string | |
| text4 | string | |
| text5 | string | |
| text1 | string | |
| text6 | string | |
| user | references | null: false, foreign_key: true |
| firstlist | references | null: false, foreign_key: true |

### Association
- belongs_to :firstlist
- belongs_to :user
