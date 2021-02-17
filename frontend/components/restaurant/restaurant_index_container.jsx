import {connect} from 'react-redux'



const mSTP = (state, ownProps) => {
    return {
        restaurants: Object.values(state.entities.restaurants),
        currentUser: state.entities.users[state.session.id],
    }
}

const mDTP = dispatch => ({
    fetchRestaurants: () => dispatch(fetchRestaurants()),
    fetchRestaurant: (id) => dispatch(fetchRestaurant(id))
});

export default connect(mSTP, mDTP)(RestaurantIndex);