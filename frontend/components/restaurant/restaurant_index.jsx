import React from 'react'
import {Link} from  'react-router-dom'
 
class RestaurantIndex extends React.Component {
    constructor(props) {
        super(props);
    }  
    
    
    componentDidMount() {
        this.props.fetchRestaurants();
    }

    randomizeRest(arr) {
       // const restRandom = this.props.restaurants.slice(0);
        for (let i = array.length - 1; i > 0; i--) {
            const j = Math.floor(Math.random() * (i + 1));
            [arr[i], arr[j]] = [arr[j], arr[i]];
        }
        return arr.slice(0, 14);
    }

    render(){
        let restArr = randomizeRest(this.props.restaurants.slice(0))
        restArr.slice(0, 14)

        return (
        <div>
            {restArr.map(rest => (
            <Link to={`/restaurants/${restaurant.id}`} key={restaurant.id}>
                <div className='rest-unit'>
                    <img src={rest.photos[0]} className="unit-photo"/>
                   <div className='unit-info'>
                   </div>
                </div>
            </Link>
            ))}
        </div>

        ) 
    }
}