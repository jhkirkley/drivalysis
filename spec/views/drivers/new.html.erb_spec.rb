require 'rails_helper'

RSpec.describe "drivers/new", type: :view do
  before(:each) do
    assign(:driver, Driver.new(
      :name => "Name1",
      :email => "example1@example.com",
      :phone => "404-555-1212",
      :available_days => "Available Days",
      :wheel_chair_accessible => false,
      :willing_to_carpool => false,
      :assistance_comfort_level => 1,
      :address => "675 West Peachtree; Atlanta, GA",
      :neighborhood => "neighborhood 1"
    ))
  end

  it "renders new driver form" do
    render

    assert_select "form[action=?][method=?]", drivers_path, "post" do

      assert_select "input#driver_name[name=?]", "driver[name]"

      assert_select "input#driver_email[name=?]", "driver[email]"

      assert_select "input#driver_phone[name=?]", "driver[phone]"

#FIXME:      assert_select "input#driver_available_days[name=?]", "driver[available_days]"

      assert_select "input#driver_wheel_chair_accessible[name=?]", "driver[wheel_chair_accessible]"

      assert_select "input#driver_willing_to_carpool[name=?]", "driver[willing_to_carpool]"

#FIMXE:      assert_select "input#driver_assistance_comfort_level[name=?]", "driver[assistance_comfort_level]"
    end
  end
end
