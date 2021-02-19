import React from 'react'


const RestaurantInfo = ({restaurant}) => {

    return (
        <div className="restaurant-info">
            <h2 className='show-name'>{restaurant.name}</h2>
                <div className='line-items'>
                    <p className="res-price">{restaurant.price}</p>
                    <p className="res-cuisine">{restaurant.cuisine}</p>
                </div>
            <ul className="info-list">
                <li className='res-number'>{restaurant.phone_number}</li>
                <li className='res-address'>{restaurant.address}</li>
                <li className='city'>{restaurant.city}</li>
                <li className='state'>{restaurant.state}</li>
            </ul>
            <div className="about">
                {restaurant.about}
            </div>
        </div>
    )
}

export default RestaurantInfo;