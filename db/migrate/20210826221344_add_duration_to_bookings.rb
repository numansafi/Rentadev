class AddDurationToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :duration, :float
  end
end
