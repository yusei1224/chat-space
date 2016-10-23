class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string   :text
      t.string   :image
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
      t.timestamps null: false
    end
  end
end
