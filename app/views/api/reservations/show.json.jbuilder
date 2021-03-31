json.reservation do
    json.set! @reservation.id do
        json.extract! @reservation, :id, :user_id, :restaurant_id, :reservation_time, :reservation_date, :party_size
    end
end