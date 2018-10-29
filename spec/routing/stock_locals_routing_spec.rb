require "rails_helper"

RSpec.describe StockLocalsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/stock_locals").to route_to("stock_locals#index")
    end

    it "routes to #show" do
      expect(:get => "/stock_locals/1").to route_to("stock_locals#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/stock_locals").to route_to("stock_locals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/stock_locals/1").to route_to("stock_locals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/stock_locals/1").to route_to("stock_locals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stock_locals/1").to route_to("stock_locals#destroy", :id => "1")
    end
  end
end
