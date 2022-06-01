class AddColumnToUserPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :user_plants, :latest_hygrometry, :integer
  end
end
