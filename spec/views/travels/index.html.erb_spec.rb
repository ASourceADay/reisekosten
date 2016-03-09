require 'rails_helper'

RSpec.describe "travels/index", :type => :view do
  before(:each) do
    assign(:travels, [
      Travel.create!(
        :travel_label => "Travel Label"
      ),
      Travel.create!(
        :travel_label => "Travel Label"
      )
    ])
  end

  it "renders a list of travels" do
    render
    assert_select "tr>td", :text => "Travel Label".to_s, :count => 2
  end
end
