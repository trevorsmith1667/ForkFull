import React from 'react';
import GreetingContainer from "./greeting/greeting_container";
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import {Route, Switch,} from 'react-router-dom';

const App = () => (
    <div>
        <header>
            <h1>Forkfull</h1>
            <GreetingContainer />
        </header>

        <Switch>
            <Route exact path="/login" component={LogInFormContainer} />
            <Route exact path="/signup" component={SignUpFormContainer} />
        </Switch>
    </div>
);

export default App