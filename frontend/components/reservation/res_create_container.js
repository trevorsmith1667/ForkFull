import { connect } from 'react-redux';
import ResCreate from '../reservation/res_create';
import { createReservation, deleteReservation } from '../../actions/reservation_actions';
import { fetchRestaurant } from '../../actions/restaurant_actions';

const mapStateToProps = (state, ownProps) => {

    const restaurant = state.entities.restaurants[ownProps.restaurantId]
    return ({
        user: state.entities.users[state.session.id],
        restaurant: restaurant
    });
};

const mapDispatchToProps = dispatch => {
    return ({
        createReservation: reservation => dispatch(createReservation(reservation)),
        deleteReservation: id => dispatch(deleteReservation(id)),
        fetchRestaurant: id => dispatch(fetchRestaurant(id))
    });

};

export default connect(mapStateToProps, mapDispatchToProps)(ResCreate);