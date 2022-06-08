class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :external_id
      t.integer :latest_hygrometry

      t.timestamps
    end
  end
end
