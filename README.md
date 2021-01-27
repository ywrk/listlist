## アプリケーション名
List-list （リストリスト） 

## 概要
このアプリケーションでは、普通の行動をリスト化して『行動の整理整頓』をするためのアプリです。
「やることが多くて面倒になる」「優柔不断で決められない」という問題解決を目指しています。

例えば、こんなことありませんか？
掃除をしようとしていても「掃除機かけて、食器洗って、タオルを回収してから洗濯機を回して…」とやることが多いと面倒になってしまう。外食しようとしても「店が決められない。店を決めてもメニューを決められない！」

このような問題を『行動をリスト化しておくこと』で防げるのではないかと考えました。行動を起こす前にこのアプリを開いてください。リスト通りに行うことで「次はなにをやるんだっけ？」と考える必要がなくなります。行動がリストで一覧になっているため、「やることが多くて面倒」という問題も緩和されることでしょう。
そして「優柔不断で決めれない」場合は、アプリのAUTO SELECTボタンを押してください。登録しておいたリストの中から１つをあなたの代わりに選びます！
リストリストは、「やることが多くて面倒になる」「優柔不断」という問題解決をする『行動の整理整頓アプリケーション』です。

## 目指した課題解決
* やることが多すぎて、なにをしたらいいかわからなくなる。めんどくさくなる
* 優柔不断で決めることができない
* 選択肢が多すぎるため、決断疲れが起きている
* 成功の行動パターンを覚えていない

## 本番環境
https://listlist2020.herokuapp.com/

※ゲストログイン機能があるのでご自由にお試しください。

## DEMO

### ログイン画面
![01login](https://user-images.githubusercontent.com/63962710/105985041-4addfb00-60de-11eb-8ee9-154689e3d054.png)
### トップページ（my List-list）
![02topmenu](https://user-images.githubusercontent.com/63962710/105985188-7d87f380-60de-11eb-8aaa-1f0308326cda.png)
### リスト詳細画面
![03list](https://user-images.githubusercontent.com/63962710/105985198-811b7a80-60de-11eb-8ab3-ad77d4b9a1c3.png)
### オートセレクト機能
※リストの中から１個を決めてくれる機能
![04autoselect](https://user-images.githubusercontent.com/63962710/105985200-81b41100-60de-11eb-8a6f-dd58cdcad32b.png)




## ユーザーレビュー改善
1. リスト数を６個⇒最大６個変更　６個固定だと自由度が少ないとの声から変更
1. トップページ(my List-list画面)のリスト表記を左寄せに変更　２列表記で奇数のリストは真ん中に表示されていた。デザイン的に左寄せがいいとの声から変更

# 使用技術
### バックエンド
Ruby, Ruby on Rails
### フロントエンド
HTML,CSS,Scss
### デザインソフト
Illustrator,XD
### データベース
MySQL,Sequel Pro
### テスト
RSpec
### エディタ
VSCode
### ソース管理
GitHub,GitHubDesktop


# DB設計

## users テーブル
| Column | Type | Options |
| -- | -- | -- |
| nickname | string | null: false |
| email | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :firstlists

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

### Association
- belongs_to :user
