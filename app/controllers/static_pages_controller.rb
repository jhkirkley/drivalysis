class StaticPagesController < ApplicationController
  def home
  end

  def map
    @coords_array = Facility.get_facility_coords
  end


  def about
  end
end
