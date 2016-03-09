require 'rails_helper'

RSpec.describe "drives/index", :type => :view do
  before(:each) do
    assign(:drives, [
      Drive.create!(
        :drive_label => "Drive Label",
        :km_distance => 1,
        :travel_id => 2
      ),
      Drive.create!(
        :drive_label => "Drive Label",
        :km_distance => 1,
        :travel_id => 2
      )
    ])
  end

  it "renders a list of drives" do
    render
    assert_select "tr>td", :text => "Drive Label".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
