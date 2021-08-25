class AddStartEndTimeToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :startdate, :datetime
    add_column :bookings, :finishdate, :datetime
  end
end
