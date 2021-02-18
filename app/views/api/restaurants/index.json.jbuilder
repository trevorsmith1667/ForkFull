@restaurants.each do |restaurant|
    json.set! restaurant.id do 
        json.extract! restaurant, :id, :name, :cuisine, :price, :city, :state
       json.photoUrl url_for(restaurant.photos[0])
    end 
end 