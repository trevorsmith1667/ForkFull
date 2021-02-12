
import React from 'react';
import GreetingContainer from "./greeting/greeting_container";
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import { Route, Switch, Link} from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import Modal from './modal/modal'
import Nav from '../components/nav/nav'
import NotFoundPage from './not_found'

const App = () => (
    <div>
        <Modal />
        <Switch>
            <Route exact path="/" component={Nav} />
            <Route render={() => <Redirect to="/" />} />
            <Route component={NotFoundPage} />
        </Switch>
    </div>
);


export default App;