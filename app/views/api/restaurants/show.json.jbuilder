json.restaurant do 
  json.set! @restaurant.id do 
      json.extract! @restaurant, :id, :name, :cuisine, :price, :phone_number, :about, :city, :state, :address, :phone_number
      json.photoUrls @restaurant.photos.map { |file| url_for(file) }
  end 
end
