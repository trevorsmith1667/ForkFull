@restaurants.each do |restaurant|
    json.set! restaurant.id do 
        json.extract! restaurant, :name, :cuisine, :price, :phone_number, :about, :city, :state, :address, :phone_number
        json.photoURL url_for(restaurant.photos.first)
    end 
end 