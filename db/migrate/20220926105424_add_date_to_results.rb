class AddDateToResults < ActiveRecord::Migration[6.1]
  def change
    add_column :results, :date, :date
  end
end
