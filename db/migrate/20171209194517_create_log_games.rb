class CreateLogGames < ActiveRecord::Migration
  def change
    create_table :log_games do |t|
      t.references :user, index: true, foreign_key: true
      t.date :dateplayed
      t.integer :opponent
      t.integer :yourscore
      t.integer :theirscore

      t.timestamps null: false
    end
  end
end
