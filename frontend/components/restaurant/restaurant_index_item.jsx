import React from 'react';
import {Link} from  'react-router-dom'
// import RestaurantPhotos from './restaurant_photos'

class RestaurantIndexItem extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {
        const restaurant = this.props.restaurant
        return (
            <div className="restaurant-index-item">
                <Link to={`/restaurants/${restaurant.id}`} className="show-link-item" key={restaurant.id}>
                    <div className='rest-unit'>
                        <div className='photo'>
                            <img src={restaurant.photoUrl} className="unit-photo" />
                            <div className='unit-info'>
                                <div className="name">{restaurant.name}</div>
                                <div className="city">{restaurant.city}</div>
                                <div className="price">{restaurant.price}</div>
                                <div className="cuisine">{restaurant.cuisine}</div>
                            </div>
                        </div>
                    </div>
                </Link>
            </div>
        )
    }
}

export default RestaurantIndexItem;