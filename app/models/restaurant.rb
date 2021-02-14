class Restaurant < ApplicationRecord
    validates :name, :cuisine, :price, :phone_number, :about, :city, :state, :average_rating,  presence: true
    
    has_many_attached :photos

end
