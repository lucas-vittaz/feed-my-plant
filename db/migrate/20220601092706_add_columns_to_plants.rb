class AddColumnsToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :scientific_name, :string
    add_column :plants, :min_baseline_temperature, :integer
    add_column :plants, :max_baseline_temperature, :integer
  end
end
