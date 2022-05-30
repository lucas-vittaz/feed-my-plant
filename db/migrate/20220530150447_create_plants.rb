class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :specie
      t.integer :baseline_hygrometry
      t.string :temperature
      t.string :light_level
      t.string :care_level
      t.string :description

      t.timestamps
    end
  end
end
