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
        const restaurant = this.props.restaurant
        if (!restaurant) {return null};
        if (!this.props.restaurant.photoUrls){return null}
        return (
            <div className="rest-show">
                <img src={restaurant.photoUrls[0]} className="show-header"/>
                <div className='show-content'>
                    <div className='show-page-info'>
                    <RestaurantInfo restaurant={restaurant}/>
                    </div>
                </div>
                 <div className="photo-count">Photos</div>
                <div className="show-photos">
                    <RestaurantPhotos allPhotos={this.props.restaurant.photoUrls.slice(1)} />
                </div> 

           </div>

        )
    }
}

export default RestaurantShow;