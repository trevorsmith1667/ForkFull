import { connect } from 'react-redux';
import { fetchRestaurant } from '../../actions/restaurant_actions'
import RestaurantShow from './restaurant_show'

const mSTP = (state, ownProps) => ({
    restaurant: state.entities.restaurants[ownProps.match.params.restaurantId],
    currentUser: state.entities.users[state.session.id]
})

const mDTP = dispatch => {
    return {
        fetchRestaurant: restaurantId => dispatch(fetchRestaurant(restaurantId))
    }
}


export default connect(mSTP, mDTP)(RestaurantShow);

