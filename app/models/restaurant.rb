class Restaurant < ApplicationRecord
    validates :name, :cuisine, :price, :phone_number, :about, :city, :state,  presence: true
    
    has_many_attached :photos

end
