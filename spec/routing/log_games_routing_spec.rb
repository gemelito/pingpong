require "rails_helper"

RSpec.describe LogGamesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/log_games").to route_to("log_games#index")
    end

    it "routes to #new" do
      expect(:get => "/log_games/new").to route_to("log_games#new")
    end

    it "routes to #show" do
      expect(:get => "/log_games/1").to route_to("log_games#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/log_games/1/edit").to route_to("log_games#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/log_games").to route_to("log_games#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/log_games/1").to route_to("log_games#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/log_games/1").to route_to("log_games#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/log_games/1").to route_to("log_games#destroy", :id => "1")
    end

  end
end
