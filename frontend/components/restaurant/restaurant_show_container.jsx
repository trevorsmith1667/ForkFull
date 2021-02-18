import { connect } from 'react-redux';
import { fetchRestaurant } from '../../actions/restaurant_actions'
import RestaurantShow from './restaurant_show.jsx'
import {withRouter} from 'react-router-dom'

const mSTP = (state, ownProps) => ({
    restaurant: state.entities.restaurants[ownProps.match.params.id],
    //restaurantId: ownProps.match.params.id,
})

const mDTP = dispatch => {
    return {
        fetchRestaurant: (id) => dispatch(fetchRestaurant(id))
    }
}


export default withRouter(connect(mSTP, mDTP)(RestaurantShow));

