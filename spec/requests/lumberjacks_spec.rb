require 'rails_helper'

RSpec.describe "Lumberjacks", :type => :request do
  describe "GET /lumberjacks" do
    it "works! (now write some real specs)" do
      get lumberjacks_path
      expect(response).to have_http_status(200)
    end
  end
end
