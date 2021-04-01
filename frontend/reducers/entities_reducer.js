import { combineReducers } from "redux";
import usersReducer from "./users_reducer";
import restaurantReducer from './restaurants_reducer'
import reservationsReducer from './reservationsReducer_reducer'

const entitiesReducer = combineReducers({
    users: usersReducer, 
    restaurants: restaurantReducer,
    reservations: reservationsReducer,
    
});
export default entitiesReducer;