@restaurants.each do |restaurant|
    json.set! restaurant.id do 
        json.extract! restaurant, :name, :cuisine, :price, :phone_number, :about, :city, :state, :average_rating
        json.photoURL url_for(restaurant.photos[0])
    end 
end 