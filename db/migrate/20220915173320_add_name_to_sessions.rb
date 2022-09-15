class AddNameToSessions < ActiveRecord::Migration[6.1]
  def change
    add_column :sessions, :name, :string
  end
end
