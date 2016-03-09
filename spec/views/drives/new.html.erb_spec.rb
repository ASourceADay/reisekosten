require 'rails_helper'

RSpec.describe "drives/new", :type => :view do
  before(:each) do
    assign(:drive, Drive.new(
      :drive_label => "MyString",
      :km_distance => 1,
      :travel_id => 1
    ))
  end

  it "renders new drive form" do
    render

    assert_select "form[action=?][method=?]", drives_path, "post" do

      assert_select "input#drive_drive_label[name=?]", "drive[drive_label]"

      assert_select "input#drive_km_distance[name=?]", "drive[km_distance]"

      assert_select "input#drive_travel_id[name=?]", "drive[travel_id]"
    end
  end
end
