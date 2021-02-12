import React from 'react';
import { FaRegUser } from 'react-icons/fa';




const Greeting = ({ currentUser, logout, openModal }) => {

    const sessionLinks = () => (
        <nav className="login-signup">
            <button id="signup" onClick={() => openModal('signup')}>Sign up</button>
            <button id="login"  onClick={() => openModal('login')}>Sign in</button>
        </nav>
    );
    const personalGreeting = () => (
        <hgroup className="header-group">
            <div class="box arrow-top">
                <FaRegUser/>
            </div>
            <h2 className="header-name">Hello, {currentUser.username}!</h2>
            <button className="header-button" onClick={logout}>Log Out</button>
        </hgroup>
    );
 

    return (
        currentUser ?
            personalGreeting(currentUser, logout) :
            sessionLinks()
    );
};

export default Greeting;