class RemoveForeignKeyFromDevices < ActiveRecord::Migration[6.1]
  def change
    remove_reference :devices, :user_plant, null: false, foreign_key: true
  end
end
