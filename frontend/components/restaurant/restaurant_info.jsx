import React from 'react'


const RestaurantInfo = ({restaurant}) => {

    return (
        <div className="restaurant-info">
            <p>{restaurant.name}</p>
            <ul className="info-list">
                <li>{restaurant.price}</li>
                <li>{restaurant.cuisine}</li>
            </ul>
            <div className="about">
                {restaurant.about}
            </div>
        </div>
    )
}

export default RestaurantInfo;