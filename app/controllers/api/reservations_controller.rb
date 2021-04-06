class Api::ReservationsController < ApplicationController
    def index
        @reservations = current_user.reservations 
        render :index
    end

    def show 
        @reservation = Reservation.find_by(id: params[:id])
        render :show
    end


    def create
        @reservation = Reservation.new(reservation_params)
        if @reservation.save
            render "api/reservations/show.json"
        else
            render json: @reservation.errors.full_messages, status: 401
        end
    end

    def update 
        @reservation = Reservation.find_by(id: params[:id])
        
        if @reservation && @reservation.update(reservation_params)
            render "api/reservations/show.json"
        else
            render json: @reservation.errors.full_messages, status: 422
        end
    end

    def destroy

        @reservation = Reservation.find_by(id: params[:id])
         if @reservation
            @reservation.destroy 
        else
            render json: @review.errors.full_messages, status: 401
        end
    end

    def reservation_params
        params.require(:reservation).permit(:user_id, :restaurant_id, :reservation_time, :reservation_date, :party_size)
    end
end