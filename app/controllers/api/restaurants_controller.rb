class Api::RestaurantsController < ApplicationController

    def index
        @restaurants = Restaurant.all
        render :index
    end 

    def show 
        @restaurant = Restaurant.with_attached_photos.find(params[:id])
        render :show
    end 

    private
    def restaurant_params
        params.require(:restaurant).permit(:name, :cuisine, :price, :phone_number, :about, :city, :state, :address, :phone_number, photos: [])
    end 

end
