class CreateControllers < ActiveRecord::Migration[5.0]
  def change
    create_table :controllers do |t|
      t.string :StaticPages
      t.string :home
      t.string :help

      t.timestamps
    end
  end
end
