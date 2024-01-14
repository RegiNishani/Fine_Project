class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :plate_number
      t.string :vehicle_type
      t.string :brand
      t.string :year
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
