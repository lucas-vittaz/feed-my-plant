class AddDefaultValueToUserPlantsLatestHygrometry < ActiveRecord::Migration[6.1]
  def change
    change_column_default :user_plants, :latest_hygrometry, 0
  end
end
