# Name  
ToDoapp

# Overview  
　タスクを管理できるToDoアプリです。「仕事」「家族」「日課」「その他」４つのグループごとにタスクを分けて追加でき、管理することが可能です。

# Background  
　プログラミングの学習を日常に組み込んだ影響で、仕事やプライベートのタスク管理が疎かになる期間が続いたため開発しました。  
　「仕事」「家族」「日課」「その他」と、日常のタスクを４つの種類のタスクに分けることで視覚的に見やすく管理しやすいアプリを目指しました。意思や記憶など曖昧なものに頼らず毎日の行動を管理することができ、仕事、プライベート、学習の両立が可能になりました。　

# Demo  
・トップページ  
<img width="1431" alt="スクリーンショット 2020-12-22 18 34 07" src="https://user-images.githubusercontent.com/68519582/102874226-848b6880-4485-11eb-8a51-721f77a7a558.png">

・ユーザー管理画面  
<img width="1431" alt="スクリーンショット 2020-12-22 18 33 43" src="https://user-images.githubusercontent.com/68519582/102874360-b6043400-4485-11eb-84bd-5b13475d2981.png">

・タスク追加ページ（編集ページも同様のビュー）
<img width="1018" alt="スクリーンショット 2020-12-22 18 38 53" src="https://user-images.githubusercontent.com/68519582/102874459-d3d19900-4485-11eb-9aa3-640b87fddb42.png">

・詳細ページ（タスク名をクリックすると遷移）
<img width="1015" alt="スクリーンショット 2020-12-22 18 40 03" src="https://user-images.githubusercontent.com/68519582/102874576-f8c60c00-4485-11eb-9f8d-ea68f0a0a502.png">

# Ingenuity  
　タスク管理をするグループを「仕事」「家族」「日課」「その他」の４つに分けることで視覚的にも見やすく、管理もしやすくなった。

# Features  
・HAML/SASS記法とBEMの命名規則に基づいたマークアップ  
・Railsによるタスク追加、編集、表示、削除機能実装

# Development  
・Ruby on Rails  
・VSCode(Visual Studio Code)

# Plan  
　今後はグループの項目をそれぞれがオリジナルで作れるよう実装する予定。また、タスクの締め切りや追加日など表示させることでより管理しやすいアプリを目指します。

# DBdesign  

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false,|
|mail|string|null: false, unique: true|
|password|string|null: false, unique: true|

### Association
- has_many :jobs
- has_many :familys
- has_many :routines
- has_many :others

## jobsテーブル

|Column|Type|Options|
|------|----|-------|
|task|string||
|details|text||
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user

## familysテーブル

|Column|Type|Options|
|------|----|-------|
|task|string||
|details|text||
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user

## routinesテーブル

|Column|Type|Options|
|------|----|-------|
|task|string||
|details|text||
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user

## othersテーブル

|Column|Type|Options|
|------|----|-------|
|task|string||
|details|text||
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
