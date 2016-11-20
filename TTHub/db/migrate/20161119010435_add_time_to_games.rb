class AddTimeToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :time, :text
  end
end
