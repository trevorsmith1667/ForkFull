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
        <div className="user-dropdown arrow-top">
            <div className="user-icon"><FaRegUserCircle size="25px"/></div>
            <div className="dropdown-content">Hello, {currentUser.username}!</div>
            <div className="dropdown-content" onClick={logout} >Log Out</div> 
        </div>
    );
 

    return (
        currentUser ?
            personalGreeting(currentUser, logout) :
            sessionLinks()
    );
};

export default Greeting;