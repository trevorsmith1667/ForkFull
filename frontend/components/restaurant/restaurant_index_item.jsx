import React from 'react';

class RestaurantIndexItem extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchRestaurants();
    }

    render() {
        return (
            <Link to={`/restaurants/${restaurant.id}`} key={restaurant.id}>
                <div className='rest-unit'>
                    <img src={restaurant.photos[0]} className="unit-photo" />
                    <div className='unit-info'>
                        <h2>{restaurant.name}</h2>
                        <p>{restaurant.city}</p>
                        <p>{restaurant.price}</p>
                    </div>
                </div>
            </Link>
        )
    }
}

export default RestaurantIndexItem;