require 'rails_helper'

RSpec.describe "drivers/index", type: :view do
  before(:each) do
    assign(:drivers, [
      Driver.create!(
        :name => "Name1",
        :email => "example1@example.com",
        :phone => "404-555-1212",
        :address => "675 West Peachtree; Atlanta, GA",
        :neighborhood => "neighborhood 1",
        :wheel_chair_accessible => false,
        :willing_to_carpool => false,
        :assistance_comfort_level => 1,
        :available_days => "Available Days"
      ),
      Driver.create!(
        :name => "Name2",
        :email => "example2@example.com",
        :phone => "770-555-1212",
        :address => "676 West Peachtree; Atlanta, GA",
        :neighborhood => "neighborhood 2",
        :wheel_chair_accessible => false,
        :willing_to_carpool => false,
        :assistance_comfort_level => 1,
        :available_days => "Available Days"
      )
    ])
  end

  it "renders a list of drivers" do
    render
    assert_select "tr>td", :text => "Name1".to_s, :count => 1
    assert_select "tr>td", :text => "Name2".to_s, :count => 1
    assert_select "tr>td", :text => "example1@example.com".to_s, :count => 1
    assert_select "tr>td", :text => "example2@example.com".to_s, :count => 1
    assert_select "tr>td", :text => "404-555-1212".to_s, :count => 1
    assert_select "tr>td", :text => "770-555-1212".to_s, :count => 1

#FIXME:
#    assert_select "tr>td", :text => false.to_s, :count => 2
#    assert_select "tr>td", :text => false.to_s, :count => 2
#    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Available Days".to_s, :count => 2
  end
end
