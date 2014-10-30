require "rails_helper"

RSpec.describe LumberjacksController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lumberjacks").to route_to("lumberjacks#index")
    end

    it "routes to #new" do
      expect(:get => "/lumberjacks/new").to route_to("lumberjacks#new")
    end

    it "routes to #show" do
      expect(:get => "/lumberjacks/1").to route_to("lumberjacks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lumberjacks/1/edit").to route_to("lumberjacks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lumberjacks").to route_to("lumberjacks#create")
    end

    it "routes to #update" do
      expect(:put => "/lumberjacks/1").to route_to("lumberjacks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lumberjacks/1").to route_to("lumberjacks#destroy", :id => "1")
    end

  end
end
