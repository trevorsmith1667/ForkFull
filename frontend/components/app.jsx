
import React from 'react';
import RestaurantIndexContainer from '../components/restaurant/restaurant_index_container'
import GreetingContainer from "./greeting/greeting_container";
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import { Route, Switch, Link} from 'react-router-dom';
import {ProtectedRoute} from '../util/route_util'
import { AuthRoute } from '../util/route_util';
import RestaurantShow from './restaurant/restaurant_show_container'
import Modal from './modal/modal'
import Nav from '../components/nav/nav'
import NotFound from './not_found.jsx'
import Homepage from './homepage/homepage'
import RestaurantIndex from '../components/restaurant/restaurant_index_container'
import Search from '../components/search/search_container'

const App = () => (
    <div classname='app-cont'>
        <Modal />
        <Nav/>
        <Switch>
            {/* <ProtectedRoute exact path="/api/user" component={LogInFormContainer} /> */}
        <Route exact path="/" component={Homepage}/>
        <Route path='/search' component={RestaurantIndex}/>
        <Route exact path='/' component={Search}/>
        <Route path='/restaurants/:id' component={RestaurantShow} />
            {/* <ProtectedRoute exact path="/api/session" /> */}
        <Route  component={NotFound} />
        </Switch>
    </div>
);


export default App;