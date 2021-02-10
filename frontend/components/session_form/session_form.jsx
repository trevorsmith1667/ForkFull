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
        this.loginDemo = this.loginDemo.bind(this)
    }

    loginDemo(e) {
    e.preventDefault();
    if (e.target.id === "demo-log") {
      const user = {
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
                    <h1>Please Sign In</h1>
                    {this.renderErrors()}

                    <div className="login-form">
                        <input type="string"
                            value={this.state.username}
                            onChange={this.update('username')}
                            className="login-input"/>

                        <input type= "string"
                            value={this.state.email}
                            onChange={this.update('email')}
                            className="login-input"/>
                        
                    
                        <input type="password"
                            value={this.state.password}
                            onChange={this.update('password')}
                            className="login-input"/>
                       
                    
                        <button type="submit" className="login_button"></button>
                    </div>

                    <button id="demo_log"
                            onClick={this.logInDemo}
                            className="demo-button">Demo User
                    </button> 

                    <div className="link-modal">
                        <a className="close-x" 
                            onClick={this.props.closeModal}>X
                        </a>
                    </div>
                    
                    <span className="link-modal">
                        <a>New to Forkfull?</a>&nbsp;
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