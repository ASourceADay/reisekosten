require 'rails_helper'

RSpec.describe "Drives", :type => :request do
  describe "GET /drives" do
    it "works! (now write some real specs)" do
      get drives_path
      expect(response.status).to be(200)
    end
  end
end
