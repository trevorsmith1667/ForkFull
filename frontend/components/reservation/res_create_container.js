import { connect } from 'react-redux';
import { createReservation, deleteReservation } from '../../actions/reservation_actions';
import { fetchRestaurant } from '../../actions/restaurant_actions';
import ReservationForm from './res_form';

const mSTP = (state, ownProps) => {

    const restaurant = state.entities.restaurants[ownProps.restaurantId]
    return ({
        user: state.entities.users[state.session.id],
        restaurant: restaurant
    });
};

const mDTP = dispatch => {
    return ({
        createReservation: reservation => dispatch(createReservation(reservation)),
        deleteReservation: id => dispatch(deleteReservation(id)),
        fetchRestaurant: id => dispatch(fetchRestaurant(id))
    });

};

export default connect(mSTP, mDTP)(ReservationForm);