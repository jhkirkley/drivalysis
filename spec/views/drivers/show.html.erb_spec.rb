require 'rails_helper'

RSpec.describe "drivers/show", type: :view do
  before(:each) do
    @driver = assign(:driver, Driver.create!(
      :name => "Name",
      :email => "Email",
      :phone => "Phone",
      :available_days => "Available Days",
      :wheel_chair_accessible => false,
      :willing_to_carpool => false,
      :assistance_comfort_level => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Available Days/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end
