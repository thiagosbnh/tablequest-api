class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :userId
      t.integer :tableId
      t.integer :boardgameId
      t.date :bookingDate
      t.time :bookingStart
      t.time :bookingFinish

      t.timestamps
    end
  end
end
