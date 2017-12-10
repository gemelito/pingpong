require 'rails_helper'

RSpec.describe "log_games/index", type: :view do
  before(:each) do
    assign(:log_games, [
      LogGame.create!(
        :user => nil,
        :opponent => 2,
        :yourscore => 3,
        :theirscore => 4
      ),
      LogGame.create!(
        :user => nil,
        :opponent => 2,
        :yourscore => 3,
        :theirscore => 4
      )
    ])
  end

  it "renders a list of log_games" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
