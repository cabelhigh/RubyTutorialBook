class RemoveLengthFromGames < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :length, :integer
  end
end
