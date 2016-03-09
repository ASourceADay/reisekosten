require 'rails_helper'

RSpec.describe "drives/edit", :type => :view do
  before(:each) do
    @drive = assign(:drive, Drive.create!(
      :drive_label => "MyString",
      :km_distance => 1,
      :travel_id => 1
    ))
  end

  it "renders the edit drive form" do
    render

    assert_select "form[action=?][method=?]", drive_path(@drive), "post" do

      assert_select "input#drive_drive_label[name=?]", "drive[drive_label]"

      assert_select "input#drive_km_distance[name=?]", "drive[km_distance]"

      assert_select "input#drive_travel_id[name=?]", "drive[travel_id]"
    end
  end
end
