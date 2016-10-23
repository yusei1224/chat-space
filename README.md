README

# Users

## column/type

* name/string
* email/string
* password/string

## column/option

* name/null: false
* email/null: false, unique: true
* password/null: false

## association

* has_many :groups, through: :groups_users
* has_many :groups_users
* has_many :chats

# Groups

## column/type

* name/string

## column/option

* name/null: false


## association

* has_many :users, thorough: :groups_users
* has_many :groups_users
* has_many :chats

# Chats

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

# Groups_users

## column/type

* user_id/references
* group_id/references

## column/option

* user_id/foreign_key :true
* group_id/foreign_key :true

## association

* belongs_to :user
* belongs_to :group
