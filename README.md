
# README

Name
Child-Saving「CoCoA」 app
====

Overview
子どもと親をつなげるスケジュール管理アプリ。

## 概要
<ul>
  <li>子ども用スケジュール管理アプリ</li>
  <li>子どもと親で共有できる（予定）</li>
  <li>その他実装中</li>
</ul>

## 制作意図
・現代では、SNSが浸透したことで子どもの行動を把握しづらくなってきました。子どもと親の関係も年々希薄になっていると言われています。そうした中で子どもの行動を少しでも共有できるアプリを作りたいと思い制作をはじめました。


## 工夫したところ
<ul>
  <li>使いやすさの徹底</li>
</ul>


## 開発環境
・Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code/

## 今後実装したい機能
<ul>
  <li>実装中</li>
</ul>

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

