class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :email
      t.string :phone_no
      t.string :home_address
      t.string :facility_address
      t.time :pickup_time
      t.string :days_of_week
      
      t.timestamps null: false
    end
  end
end
