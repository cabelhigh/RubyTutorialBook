class AddLengthToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :length, :text
  end
end
