import React from 'react'
import {Link} from  'react-router-dom'
import RestaurantIndexItem from './restaurant_index_item';
 
class RestaurantIndex extends React.Component {
    constructor(props) {
        super(props);
    }  
    
    
    componentDidMount() {
        this.props.fetchRestaurants();
    }

    // randomizeRest(arr) {
    //    // const restRandom = this.props.restaurants.slice(0);
    //     for (let i = array.length - 1; i > 0; i--) {
    //         const j = Math.floor(Math.random() * (i + 1));
    //         [arr[i], arr[j]] = [arr[j], arr[i]];
    //     }
    //     return arr.slice(0, 14);
    // }

    render(){
        // let restArr = randomizeRest(this.props.restaurants.slice(0))
        // restArr.slice(0, 14)
        const rests = this.props.restaurants
        // randomizeRest(rests)

        return (

        <div className="rest-index">
            {rests.map(restaurant => (
                // <Link to={`/restaurants/${restaurant.id}`}>
                <RestaurantIndexItem key={restaurant.id} restaurant={restaurant}/>
                // </Link>
            ))}
        </div>

        ) 
    }
}

export default RestaurantIndex;