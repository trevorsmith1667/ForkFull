import React from 'react';

class RestaurantIndexItem extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchRestaurants();
    }

    render() {
        <div className='rest-info'>
            <h2>{restaurant.name}</h2>
            <ul className='info=list'>
                <li>{restaurant.about}</li>
                <li>{restaurant.cusine}</li>
                <li>{restaurant.price}</li>
                <li>{restaurant.city}</li>
                <li>{restaurant.state}</li>
            </ul>
        </div>
    }
 

}

export default RestaurantIndexItem;