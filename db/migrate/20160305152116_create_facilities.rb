class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :address
      t.string :county
      t.string :city
      t.string :zip_code
      t.integer :beds
      t.string :telephone
      t.string :type
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
