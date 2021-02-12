import React from 'react';
import { FaRegUserCircle } from 'react-icons/fa';
import {Link} from  'react-router-dom'




const Greeting = ({ currentUser, logout, openModal }) => {

    const sessionLinks = () => (
        <nav className="login-signup">
            <button id="signup" onClick={() => openModal('signup')}>Sign up</button>
            <button id="login"  onClick={() => openModal('login')}>Sign in</button>
        </nav>
    );
    const personalGreeting = () => (
        <div className="user-dropdown">
            <div className="user-icon"><FaRegUserCircle size="28px"/>
                <ul className="dropdown-list arrow-top">
                    <li className="dropdown-greeting">Hello, {currentUser.username}!</li>
                    <li className="dropdown-signout" onClick={logout} >Sign out</li> 
                </ul>
            </div>
        </div>
    );
 

    return (
        currentUser ?
            personalGreeting(currentUser, logout) :
            sessionLinks()
    );
};

export default Greeting;