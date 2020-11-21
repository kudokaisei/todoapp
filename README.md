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
