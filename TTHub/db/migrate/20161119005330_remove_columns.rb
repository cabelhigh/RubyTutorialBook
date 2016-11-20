class RemoveColumns < ActiveRecord::Migration[5.0]
  def change
  end

  def self.up
    remove_column :games, :players
    remove_column :games, :length
  end

end
