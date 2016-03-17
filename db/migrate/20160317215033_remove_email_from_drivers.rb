class RemoveEmailFromDrivers < ActiveRecord::Migration
   def change
    remove_column :drivers, :email, :string
  end
end
