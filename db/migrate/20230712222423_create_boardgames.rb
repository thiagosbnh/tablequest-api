class CreateBoardgames < ActiveRecord::Migration[7.0]
  def change
    create_table :boardgames do |t|
      t.string :title
      t.text :description
      t.integer :maxPlayers

      t.timestamps
    end
  end
end
