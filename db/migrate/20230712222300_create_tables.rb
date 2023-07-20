class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :tables do |t|
      t.integer :maxGuests
      t.integer :tableNumber

      t.timestamps
    end
  end
end
