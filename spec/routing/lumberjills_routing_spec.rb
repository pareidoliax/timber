require "rails_helper"

RSpec.describe LumberjillsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lumberjills").to route_to("lumberjills#index")
    end

    it "routes to #new" do
      expect(:get => "/lumberjills/new").to route_to("lumberjills#new")
    end

    it "routes to #show" do
      expect(:get => "/lumberjills/1").to route_to("lumberjills#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lumberjills/1/edit").to route_to("lumberjills#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lumberjills").to route_to("lumberjills#create")
    end

    it "routes to #update" do
      expect(:put => "/lumberjills/1").to route_to("lumberjills#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lumberjills/1").to route_to("lumberjills#destroy", :id => "1")
    end

  end
end
