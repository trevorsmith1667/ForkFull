import { connect } from 'react-redux';
import { fetchRestaurant } from '../../actions/restaurant_actions'
import RestaurantShow from './restaurant_show'

const mSTP = (state, ownProps) => {
    const restaurant = state.entities.restaurants[restaurId]
    const restaurId = ownProps.match.params.restaurId
    return {
        restaurId: restaurId,
        restaurant: restaurant
    }
}

const mDTP = dispatch => {
    return {
        fetchRestaurant: restaurId => dispatch(fetchRestaurant(restaurId))
    }
}


export default connect(mSTP, mDTP)(RestaurantShow);

