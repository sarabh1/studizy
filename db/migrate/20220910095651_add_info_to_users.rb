class AddInfoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :school, :string
    add_column :users, :study, :string
    add_column :users, :teacher, :boolean, default: false
  end
end
