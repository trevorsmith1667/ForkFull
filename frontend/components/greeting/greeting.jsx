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
                <div className='dropdown-contents'>
                    <div className="dropdown-list arrow-top">
                        <div className="dropdown-greeting">Hi, {currentUser.username}!</div>
                        <div className="dropdown-signout" onClick={logout} >Sign out</div>
                    </div>
                </div>
        
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