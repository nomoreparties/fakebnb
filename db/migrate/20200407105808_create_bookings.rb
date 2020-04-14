class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :home_id
      t.integer :days
    end
  end
end
