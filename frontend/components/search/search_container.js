import { connect } from 'react-redux';
import { searchRestaurants } from '../../actions/restaurant_actions';
import Search from './search'

// const mSTP = (state, ownProps) 
const mapDispatchToProps = dispatch => {

    return {
        search: (query) => dispatch(searchRestaurants(query))
    };
};

export default connect(null, mapDispatchToProps)(Search)