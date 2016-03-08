require 'rails_helper'

RSpec.describe "drivers/index", type: :view do
  before(:each) do
    assign(:drivers, [
      Driver.create!(
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :available_days => "Available Days",
        :wheel_chair_accessible => false,
        :willing_to_carpool => false,
        :assistance_comfort_level => 1
      ),
      Driver.create!(
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :available_days => "Available Days",
        :wheel_chair_accessible => false,
        :willing_to_carpool => false,
        :assistance_comfort_level => 1
      )
    ])
  end

  it "renders a list of drivers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Available Days".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
