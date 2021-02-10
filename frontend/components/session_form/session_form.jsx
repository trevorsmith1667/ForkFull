import React from 'react';
import { withRouter } from 'react-router-dom';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: '',
            email: '',
            password: ''
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.
    }

    loginDemo(e) {
    e.preventDefault();
    if (e.target.id === "demo-log") {
      let user = {
          email: "demo_user@gmail.com",
          password: "123456"
      }
      this.props.login(user)
        .then(user => {this.props.closeModal()})
    }
  }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }
    
    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user).then(this.props.closeModal);
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


        return (
            <div className="login-form-container">
                <form onSubmit={this.handleSubmit} className="login-form-box">
                    Please Sign In
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
                     <button id="demo_log"
                            onClick={this.logInDemo}
                            className="demo_button">Demo User
                    </button>
                        <div className="link-modal">
                            <a className="demo_link" 
                                onClick={this.props.closeModal}>X
                            </a>
                        </div>
                            <span className="link-modal">
                                <a>New to Forkfull?</a>
                                &nbsp;
                                <a 
                                className='main link'
                                onClick={ () =>this.props.openModal('showSignUp') }>Create an account
                                </a>
                            </span>
                </form>
            </div>
        );
    }
}
export default withRouter(SessionForm);