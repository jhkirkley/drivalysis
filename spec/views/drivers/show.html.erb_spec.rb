require 'rails_helper'

RSpec.describe "drivers/show", type: :view do
  before(:each) do
    @driver = assign(:driver, Driver.create!(
      :name => "Name1",
      :email => "example1@example.com",
      :phone => "404-555-1212",
      :address => "675 West Peachtree; Atlanta, GA",
      :neighborhood => "neighborhood 1",
      :wheel_chair_accessible => false,
      :willing_to_carpool => false,
      :assistance_comfort_level => 1,
      :available_days => "Available Days"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name1/)
    expect(rendered).to match(/example1@example.com/)
    expect(rendered).to match(/404-555-1212/)

#FIXME:
#    expect(rendered).to match(/false/)
#    expect(rendered).to match(/false/)
#    expect(rendered).to match(/1/)
#    expect(rendered).to match(/Available Days/)
  end
end
