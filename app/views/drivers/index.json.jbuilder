json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :email, :phone, :available_time, :available_days, :wheel_chair_accessible, :willing_to_carpool, :assistance_comfort_level
  json.url driver_url(driver, format: :json)
end
