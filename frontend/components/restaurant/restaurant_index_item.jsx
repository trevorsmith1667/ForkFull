import React from 'react';
import {Link} from  'react-router-dom'

class RestaurantIndexItem extends React.Component {
    constructor(props) {
        super(props);
    }


    render() {
        const {restaurant} = this.props
        return (
            <div className="restaurant-index-item">
                {/* <Link to={`/restaurants/${restaurant.id}`} key={restaurant.id}> */}
                    <div className='rest-unit'>
                        <div className='photo'>
                            <img src={restaurant.photoURL} className="unit-photo" />
                            <div className='unit-info'>
                                <div className="name">{restaurant.name}</div>
                                <div className="city">{restaurant.city}</div>
                                <div className="price">{restaurant.price}</div>
                                <div className="cuisine">{restaurant.cuisine}</div>
                            </div>
                        </div>
                    </div>
                {/* </Link> */}
            </div>
        )
    }
}

export default RestaurantIndexItem;