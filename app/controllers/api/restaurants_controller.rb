class Api::RestaurantsController < ApplicationController

    def index
        @restaurants = Restaurant.all
        render: index
    end 

    def show 
        @restaurant = Restaurant.find(params[:id])
        render: show
    end 

    private
    def restaurant_params
        params.require(:restaurant).permit(:name, :cuisine, :price, :phone_number, :about, :city, :state, :average_rating)
    end 

end
