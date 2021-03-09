class Restaurant < ApplicationRecord
    validates :name, :cuisine, :price, :phone_number, :about, :city, :state,  presence: true
    
    has_many_attached :photos

    has_many :reservations,
    foreign_key: :restaurant_id,
    class_name: :Reservation

end
