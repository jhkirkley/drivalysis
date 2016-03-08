class Facility < ActiveRecord::Base

    def self.get_facility_coords
    facilities = Facility.all

    facility_coords_array = []

    facilities.each do |facility|
      facility_coords_array << {"lat" => facility.latitude, "lng" => facility.longitude, "name" => facility.name, "what" => facility.address}
    end

      facility_coords_array

    end
end
