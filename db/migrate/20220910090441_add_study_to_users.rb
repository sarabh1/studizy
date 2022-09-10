class AddStudyToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :study, :string
  end
end
