import React from 'react';
import { Link } from 'react-router-dom';
import GreetingContainer from '../greeting/greeting_container';

const Nav = () => {
    return (
        <header className="nav">
            
            <Link to="/" className="nav-header">
                <img id="nav-header-img" src={window.logoURL} />
                <h1 id="app-title">ForkFull</h1>
            </Link>
            <GreetingContainer className="greeting-box" />
        </header>
    )
}

export default Nav;