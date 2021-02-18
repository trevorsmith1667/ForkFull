import React from 'react'
import RestaurantPhotos from'./restaurant_photos'
import RestaurantInfo from './restaurant_info'

class RestaurantShow extends React.Component {
    constructor(props){
        super(props);
    }


    componentDidMount(){
        this.props.fetchRestaurant(this.props.match.params.id)
    }

    render(){
        if (!this.props.restaurant.photoUrls){return null}
        const restaurant = this.props.restaurant
        if (!restaurant) return null;
       const photoUs = this.props.restaurant.photoUrls
        return (
            <div className="rest-show">
                {/* <img src={photoUs[0]} className="show-header"/> */}
                <div className='show-page-info'>
                    <RestaurantInfo restaurant={restaurant}/>
                </div>
                <div className="show-photos">
                    <RestaurantPhotos allPhotos={this.props.restaurant.photoUrls} />
                </div> 

           </div>

        )
    }
}

export default RestaurantShow;