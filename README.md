
# README
![CoCoA](https://user-images.githubusercontent.com/67889594/94167360-62ef0500-fec7-11ea-96b2-ae21947b397e.jpg)

Name
Child-Saving「CoCoA」 app
====

Overview
子どもと親をつなげる連絡帳アプリ。

## 概要
<ul>
  <li>子ども用スケジュール管理アプリ</li>
  <li>子どもと親で共有できる</li>
  <li>ログイン機能<li>
  <li>スケジュール登録<li>
  <li>日記機能</li>
</ul>

## 制作意図
・現代では、SNSが浸透したことで子どもの行動を把握しづらくなってきました。子どもと親の関係も年々希薄になっていると言われています。そうした中で子どもの行動を少しでも共有できるアプリを作りたいと思い制作をはじめました。


## 工夫したところ
<ul>
  <li>使いやすさの徹底</li>
</ul>

## 開発環境
・javascript/Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code/

## 今後実装したい機能
<ul>
  <li>ユーザーごとの色変更</li>
</ul>


## デモ画像①
![CoCoA-index](https://user-images.githubusercontent.com/67889594/94344029-4e417700-0057-11eb-8677-f9b2cdad3386.png)

## デモ画像②
![CoCoA-tt](https://user-images.githubusercontent.com/67889594/94344301-44b90e80-0059-11eb-8a04-b766a9a68916.png)

## デモ画像③
![CoCoA-comment](https://user-images.githubusercontent.com/67889594/94344107-fc4d2100-0057-11eb-93bd-4d259462c29b.png)


## Licence
Copyright YOU ARE 2020.

## usersテーブル

Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false,add_index :users, :email, unique: true|
|password|string|null: false|

### Association
- has_many :events
- has_many :comments


## Eventsテーブル

Column|Type|Options|
|------|----|-------|
|title|string|
|body|string|
|start_date|datetime|
|end_date|datetime|
|user_id|integer|

### Association
- belongs_to :user
- has_many :comments


## Commentsテーブル

Column|Type|Options|
|------|----|-------|
|name|text|
|text|text|
|user_id|integer|
|event_id|integer|

### Association
- belongs_to :user
- belongs_to :event

