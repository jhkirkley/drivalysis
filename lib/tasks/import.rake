require 'csv'

namespace :import do
desc "import clinics from csv"
task facilities: :environment do

CSV.foreach("dclinics.csv", headers: true) do |row|
  p row
  Facility.create(name: row[3], address: row[5], county: row[4], city: row[6], zip_code: row[2], beds: row[8], telephone: row[9], facility_type: row[10], latitude: row[1],longitude: row[0])
 end

end
end
