class Reservation < ApplicationRecord
    validates :user_id, :restaurant_id, :party_size, :reservation_time, :reservation_date, presence: true

    belongs_to :user, 
    foreign_key: :user_id, 
    class_name: :User


    belongs_to :restaurant,
    foreign_key: :restaurant_id, 
    class_name: :Restaurant

end
