import {connect} from 'react-redux'
import RestaurantIndex from './restaurant_index.jsx'
import { fetchRestaurant, fetchRestaurants } from "../../actions/restaurant_actions.js"
import {withRouter} from 'react-router-dom'

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

export default withRouter(connect(mSTP, mDTP)(RestaurantIndex));