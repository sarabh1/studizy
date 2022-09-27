class AddAverageToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :average, :float
  end
end
