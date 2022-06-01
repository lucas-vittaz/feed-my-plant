class RemoveHygrometryFromUserPlants < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_plants, :hygrometry, :integer
  end
end
