class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :restaurant_id, null: false
      t.integer :user_id, null: false
      t.integer :party_size, null: false
      t.datetime :reservation_date, null: false
      t.timestamps
    end
  end
end
