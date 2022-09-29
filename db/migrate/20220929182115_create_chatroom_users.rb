class CreateChatroomUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :chatroom_users do |t|
      t.references :user
      t.references :chatroom

      t.timestamps
    end
  end
end
