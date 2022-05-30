class CreateUserPlants < ActiveRecord::Migration[6.1]
  def change
    create_table :user_plants do |t|
      t.references :users, null: false, foreign_key: true
      t.references :plants, null: false, foreign_key: true
      t.integer :hygrometry
      t.string :room

      t.timestamps
    end
  end
end
