class AddAvailableMondayToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :avilable_monday, :boolean
    add_column :drivers, :avilable_tuesday, :boolean
    add_column :drivers, :avilable_wednesday, :boolean
    add_column :drivers, :avilable_thursday, :boolean
    add_column :drivers, :avilable_friday, :boolean
    add_column :drivers, :avilable_saturday, :boolean
    add_column :drivers, :avilable_sunday, :boolean
    add_column :drivers, :avilable_time_monday, :time
    add_column :drivers, :avilable_time_tuesday, :time
    add_column :drivers, :avilable_time_wednesday, :time
    add_column :drivers, :avilable_time_thurday, :time
    add_column :drivers, :avilable_time_friday, :time
    add_column :drivers, :avilable_time_sauterday, :time
    add_column :drivers, :avilable_time_sunday, :time

  end
end
