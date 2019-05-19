# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|body|text|null: false|
|image|string|
|message_id|integer|

### Association
- belongs_to :group
- belongs_to :user



## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null: false, unique: true|
|user_id|integer|foreign_key: true|
|group_id|integer|foreign_key: true|

## Association
- has_many :messages
- has_many :groups, through: users_messages



## Groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|group_id|integer|
|user_id|integer|

### Asociation
- has_many :users, through: users_messages
- has_many :messages



## Users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|users_id|integer|foreign_key: true|
|messages_id|integer|foreign_key: true|

### Association
- has_many :users
- has_many :groups