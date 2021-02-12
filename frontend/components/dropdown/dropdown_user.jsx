import React from 'react'
import { Link } from 'react-router-dom'

class UserDrop extends React.Component {

    render() {

        return (
            <div>
                <div className="dropdown-user">
                    <div id="user-dropdown-gr">
                        <h3 id="user-greeting">Hello, {this.props.currentUser.username}!</h3>
                    </div>
                    <ul>
                        <li id="user-logout" onClick={this.props.logout.bind(this)}>Sign Out</li>
                    </ul>
                </div>
            </div>

        )
    }
}

export default UserDrop;
