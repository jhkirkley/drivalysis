require 'csv'

namespace :import do
desc "import clinics from csv"
task facilities: :environment do

CSV.foreach("dclinics.csv") do |row|
  p rows
 end

end
end
