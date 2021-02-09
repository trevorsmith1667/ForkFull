import React from 'react';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: '',
            email: '',
            password: ''
        };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
    }

    renderErrors() {
        return (
            <ul>
                {this.props.errors.map((error, i) => (
                    <li key={`error-${i}`}>
                        {error}
                    </li>
                ))}
            </ul>
        );
    }

    render() {

        // let test = null

        // if (this.props.formType === "signup") {
        //     test = (
        //         <>
        //             <label>Full Name:
        //         <input type="string"
        //                     value={this.state.name}
        //                     onChange={this.update('name')}
        //                     className="signin-input"
        //                 />
        //             </label>
        //             <br />
        //         </>)
        // }
        return (
            <div className="login-form-container">
                <form onSubmit={this.handleSubmit} className="login-form-box">
                    Welcome to Forkfull!
                 <br />
                    Please {this.props.formType} or {this.props.navLink}
                    {this.renderErrors()}
                    <div className="login-form">
                        <label>Username:
                            <input type="string"
                            value={this.state.username}
                            onChange={this.update('username')}
                            className="login-input"/>
                        </label>
                        <label>Email:
                            <input type= "string"
                                value={this.state.email}
                                onChange={this.update('email')}
                                className="login-input"
                            />
                        </label>
                        <br />
                        <label>Password:
              <input type="password"
                                value={this.state.password}
                                onChange={this.update('password')}
                                className="login-input"
                            />
                        </label>
                        <br />
                        <input className="session-submit" type="submit" value={this.props.formType} />
                    </div>
                </form>
            </div>
        );
    }
}
export default SessionForm;