class AddWaterNeedToPlant < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :water_need, :string
  end
end
