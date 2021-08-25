class RemoveDateFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :date
  end
end
