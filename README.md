# README


## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|group_id|integer|foreign_key: true|
|body|text|null: false|
|image|string|

### Association
- belongs_to :group
- belongs_to :user



## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null: false, unique: true|

## Association
- has_many :messages
- has_many :groups, through: users_groups



## Groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Asociation
- has_many :users, through: users_groups
- has_many :messages



## Users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|groups_id|integer|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group