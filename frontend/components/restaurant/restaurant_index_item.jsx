import React from 'react';

class RestaurantIndexItem extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchRestaurants();
    }

    render() {
        const restArr = this.props.restaurants;
        return (
            <div>
                 {restArr.map(restaurant => (
                    restaurant.name))}
            </div>
        )
    }
}

export default RestaurantIndexItem;