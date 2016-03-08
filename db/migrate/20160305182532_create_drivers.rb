class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.time :available_time
      t.string :available_days
      t.string :neighborhood
      t.boolean :wheel_chair_accessible, default: true
      t.boolean :willing_to_carpool, default: true
      t.integer :assistance_comfort_level

      t.timestamps null: false
    end
  end
end
