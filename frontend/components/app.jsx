
import React from 'react';
import GreetingContainer from "./greeting/greeting_container";
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import { Route, Switch, Link} from 'react-router-dom';
import {ProtectedRoute} from '../util/route_util'
import { AuthRoute } from '../util/route_util';
import Modal from './modal/modal'
import Nav from '../components/nav/nav'
import NotFound from './not_found.jsx'
import Homepage from './homepage/homepage'

const App = () => (
    <div>
        <Modal />
        <Nav/>
        <Switch>
            {/* <ProtectedRoute exact path="/api/user" component={LogInFormContainer} /> */}
        <Route exact path="/" component={Homepage}/>
            {/* <ProtectedRoute exact path="/api/session" /> */}
        <Route  component={NotFound} />
        </Switch>
    </div>
);


export default App;