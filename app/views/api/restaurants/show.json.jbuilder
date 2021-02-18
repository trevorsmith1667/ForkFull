
json.extract! @restaurant, :id, :name, :cuisine, :price, :phone_number, :about, :city, :state, :address
json.photoUrls @restaurant.photos.map { |file| url_for(file) }

