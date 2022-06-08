class AddForeignKeyToUserPlants < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_plants, :device, foreign_key: true
  end
end
