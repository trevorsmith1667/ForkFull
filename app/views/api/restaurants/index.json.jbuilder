@restaurants.each do |restaurant|
    json.set! restaurant.id do 
        json.extract! restaurant, :name, :cuisine, :price, :phone_number, :about, :city, :state, :average_rating
        json.imageURL url_for(restaurant.image)
    end 
end 