class RemoveEmailFromPatients < ActiveRecord::Migration
  def change
    remove_column :patients, :email, :string
  end
end
