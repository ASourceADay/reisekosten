require 'rails_helper'

RSpec.describe "drives/show", :type => :view do
  before(:each) do
    @drive = assign(:drive, Drive.create!(
      :drive_label => "Drive Label",
      :km_distance => 1,
      :travel_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Drive Label/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
