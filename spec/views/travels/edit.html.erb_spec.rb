require 'rails_helper'

RSpec.describe "travels/edit", :type => :view do
  before(:each) do
    @travel = assign(:travel, Travel.create!(
      :travel_label => "MyString"
    ))
  end

  it "renders the edit travel form" do
    render

    assert_select "form[action=?][method=?]", travel_path(@travel), "post" do

      assert_select "input#travel_travel_label[name=?]", "travel[travel_label]"
    end
  end
end
