require 'rails_helper'

RSpec.describe "drivers/edit", type: :view do
  before(:each) do
    @driver = assign(:driver, Driver.create!(
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :available_days => "MyString",
      :wheel_chair_accessible => false,
      :willing_to_carpool => false,
      :assistance_comfort_level => 1
    ))
  end

  it "renders the edit driver form" do
    render

    assert_select "form[action=?][method=?]", driver_path(@driver), "post" do

      assert_select "input#driver_name[name=?]", "driver[name]"

      assert_select "input#driver_email[name=?]", "driver[email]"

      assert_select "input#driver_phone[name=?]", "driver[phone]"

      assert_select "input#driver_available_days[name=?]", "driver[available_days]"

      assert_select "input#driver_wheel_chair_accessible[name=?]", "driver[wheel_chair_accessible]"

      assert_select "input#driver_willing_to_carpool[name=?]", "driver[willing_to_carpool]"

      assert_select "input#driver_assistance_comfort_level[name=?]", "driver[assistance_comfort_level]"
    end
  end
end
