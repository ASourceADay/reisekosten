require 'rails_helper'

RSpec.describe "travels/show", :type => :view do
  before(:each) do
    @travel = assign(:travel, Travel.create!(
      :travel_label => "Travel Label"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Travel Label/)
  end
end
