class AddColumnToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :min_baseline_hygrometry, :integer
    add_column :plants, :max_baseline_hygrometry, :integer
    add_column :plants, :sensor_hygrometry, :integer
  end
end
