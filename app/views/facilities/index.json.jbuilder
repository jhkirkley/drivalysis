json.array!(@facilities) do |facility|
  json.extract! facility, :id, :name, :address, :county, :city, :zip_code, :beds, :telephone, :type
  json.url facility_url(facility, format: :json)
end
