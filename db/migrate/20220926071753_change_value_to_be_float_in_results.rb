class ChangeValueToBeFloatInResults < ActiveRecord::Migration[6.1]
  def up
    change_column :results, :value, :float
  end

  def down
    change_column :results, :value, :integer
  end
end
