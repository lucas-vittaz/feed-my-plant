class RemoveSensorHygrometryFromPlants < ActiveRecord::Migration[6.1]
  def change
    remove_column :plants, :sensor_hygrometry, :integer
  end
end
