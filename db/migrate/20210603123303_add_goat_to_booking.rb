class AddGoatToBooking < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :goat_ad, null: false, foreign_key: true
  end
end
