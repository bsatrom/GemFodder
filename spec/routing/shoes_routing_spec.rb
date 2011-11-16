require "spec_helper"

describe ShoesController do
  describe "routing" do

    it "routes to #index" do
      get("/shoes").should route_to("shoes#index")
    end

    it "routes to #new" do
      get("/shoes/new").should route_to("shoes#new")
    end

    it "routes to #show" do
      get("/shoes/1").should route_to("shoes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shoes/1/edit").should route_to("shoes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shoes").should route_to("shoes#create")
    end

    it "routes to #update" do
      put("/shoes/1").should route_to("shoes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shoes/1").should route_to("shoes#destroy", :id => "1")
    end

  end
end
