import {connect} from 'react-redux'
import { fetchRestaurant, fetchRestaurants } from "../../actions/restaurant_actions.js"


const mSTP = (state, ownProps) => {
    return {
        restaurants: Object.values(state.entities.restaurants),
        currentUser: state.entities.users[state.session.id],
    }
}

const mDTP = dispatch => ({
    fetchRestaurants: () => dispatch(fetchRestaurants()),
    fetchRestaurant: (restaurId) => dispatch(fetchRestaurant(restaurId))
});

export default connect(mSTP, mDTP)(RestaurantIndex);