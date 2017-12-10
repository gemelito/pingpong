require 'rails_helper'

RSpec.describe "log_games/new", type: :view do
  before(:each) do
    assign(:log_game, LogGame.new(
      :user => nil,
      :opponent => 1,
      :yourscore => 1,
      :theirscore => 1
    ))
  end

  it "renders new log_game form" do
    render

    assert_select "form[action=?][method=?]", log_games_path, "post" do

      assert_select "input#log_game_user_id[name=?]", "log_game[user_id]"

      assert_select "input#log_game_opponent[name=?]", "log_game[opponent]"

      assert_select "input#log_game_yourscore[name=?]", "log_game[yourscore]"

      assert_select "input#log_game_theirscore[name=?]", "log_game[theirscore]"
    end
  end
end
