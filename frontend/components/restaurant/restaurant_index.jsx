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

   
    render(){
        if (this.props.restaurants.length === 0) {return null};
       
        const rests = this.props.restaurants
       
        return (

        <div className="rest-index">
            
            {rests.map(restaurant => (
                <RestaurantIndexItem key={restaurant.id} restaurant={restaurant}/>
            ))}
        </div>

        ) 
    }
}

export default RestaurantIndex;