class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :status
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
