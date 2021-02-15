json.restaurant do 
  json.set! @restaurant.id do 
      json.extract! @restaurant, :name, :cuisine, :price, :phone_number, :about, :city, :state
      json.photoUrls @restaurant.photos.map { |file| url_for(file) }
  end 
end
