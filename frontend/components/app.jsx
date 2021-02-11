
import React from 'react';
import GreetingContainer from "./greeting/greeting_container";
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import { Route, Switch, Link} from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import Modal from './modal/modal'
import Nav from '../components/nav/nav'

const App = () => (
    <div>
        <Modal />
        {/* <header>
            <Link to="/" className="header-link">
                <h1>ForkFull</h1>
            </Link>
            <GreetingContainer />
        </header> */}
        <Switch>
            <Route exact path="/" component={Nav} />
            <Route render={() => <Redirect to="/" />} />
        </Switch>
    </div>
);


export default App;