require 'rails_helper'

RSpec.describe "LogGames", type: :request do
  describe "GET /log_games" do
    it "works! (now write some real specs)" do
      get log_games_path
      expect(response).to have_http_status(200)
    end
  end
end
