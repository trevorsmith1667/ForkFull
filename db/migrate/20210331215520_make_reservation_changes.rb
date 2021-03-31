class MakeReservationChanges < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :reservation_time, :time, null: false 
    remove_column :reservations, :reservation_date
    add_column :reservations, :reservation_date, :date, null: false 
  end
end
