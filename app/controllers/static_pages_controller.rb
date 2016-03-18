class StaticPagesController < ApplicationController
   def home
    if user_signed_in?
      @user = current_user
      if @user[:meta_type] == 'Patient'
        redirect_to contributor_path(@user.meta.id)
      elsif @user[:meta_type] == 'Driver'
        redirect_to driver_path(@user.meta.id)
      end
    end
  end

  def map
    @coords_array = Facility.get_facility_coords
  end


  def about
  end
end
