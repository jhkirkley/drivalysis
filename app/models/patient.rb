class Patient < ActiveRecord::Base
  validates :home_address, :length => { :maximum => 2000 }
  validates :facility_address, :length => { :maximum => 2000 }


end
