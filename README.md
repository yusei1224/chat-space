README

# User

## column/type

* name/string
* email/string
* password/string

## column/option

* name/null: false
* email/null: false, unique: true
* password/null: false

## association

* has_many :groups, through: :group_users
* has_many :group_users
* has_many :chats

# Group

## column/type

* name/string

## column/option

* name/null: false

## association

* has_many :users, thorough: :group_users
* has_many :users
* has_many :chats

# Chat

## column/type

* text/string
* image/string
* user_id/references
* group_id/references

## column/option

* user_id/foreign_key :true
* group_id/foreign_key :true

## association

* belongs_to :user
* belongs_to :group

# User_groups

## column/type

* user_id/references
* group_id/references

## column/option

* user_id/foreign_key :true
* group_id/foreign_key :true

## association

* belongs_to :user
* belongs_to :group
