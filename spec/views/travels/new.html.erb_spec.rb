require 'rails_helper'

RSpec.describe "travels/new", :type => :view do
  before(:each) do
    assign(:travel, Travel.new(
      :travel_label => "MyString"
    ))
  end

  it "renders new travel form" do
    render

    assert_select "form[action=?][method=?]", travels_path, "post" do

      assert_select "input#travel_travel_label[name=?]", "travel[travel_label]"
    end
  end
end
