require 'rails_helper'

RSpec.describe "Lumberjills", :type => :request do
  describe "GET /lumberjills" do
    it "works! (now write some real specs)" do
      get lumberjills_path
      expect(response).to have_http_status(200)
    end
  end
end
