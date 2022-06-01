class RemoveSpecieFromPlants < ActiveRecord::Migration[6.1]
  def change
    remove_column :plants, :specie, :string
  end
end
