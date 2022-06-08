class AddForeignKeyToDevices < ActiveRecord::Migration[6.1]
  def change
    add_reference :devices, :user_plant, null: false, foreign_key: true
  end
end
