class AddAvailableTimeToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :available_monday, :boolean
    add_column :drivers, :available_tuesday, :boolean
    add_column :drivers, :available_wednesday, :boolean
    add_column :drivers, :available_thursday, :boolean
    add_column :drivers, :available_friday, :boolean
    add_column :drivers, :available_saturday, :boolean
    add_column :drivers, :available_sunday, :boolean
    add_column :drivers, :available_time_monday, :time, default: '2009-01-01 00:00:00'
    add_column :drivers, :available_time_tuesday, :time, default: '2009-01-01 00:00:00'
    add_column :drivers, :available_time_wednesday, :time, default: '2009-01-01 00:00:00'
    add_column :drivers, :available_time_thursday, :time, default: '2009-01-01 00:00:00'
    add_column :drivers, :available_time_friday, :time, default: '2009-01-01 00:00:00'
    add_column :drivers, :available_time_sauterday, :time, default: '2009-01-01 00:00:00'
    add_column :drivers, :available_time_sunday, :time, default: '2009-01-01 00:00:00'

  end
end
