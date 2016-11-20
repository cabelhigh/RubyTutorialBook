class AddPlayerCountToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :player_count, :text
  end
end
