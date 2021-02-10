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

    
    componentWillUnmount() {
        this.props.clearErrors();
    }
    
    loginDemo(e) {
    e.preventDefault();
    e.stopPropagation();
      const demo = {
          username: "demo_user",
          email: "demo_user@gmail.com",
          password: "123456"
      }
      this.props.processForm(demo).then(this.props.closeModal)
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
        let demoButton = (<></>)
        if (this.props.formType === 'login') {
            demoButton = <a onClick={this.loginDemo}>Demo Login</a>
                
        }
       
        return (
            <div className="login-form-container">
                <form onSubmit={this.handleSubmit} className="login-form-box">
                    <h1 className="modal-header">Please Sign In</h1>
                    <div onClick={this.props.closeModal} className="close-x">X</div>
                    {this.renderErrors()}

                    <div className="login-form">
                        <input type="string"
                            value={this.state.username}
                            onChange={this.update('username')}
                            className="login-input"
                            placeholder="Username"/>
                            

                        <input type= "string"
                            value={this.state.email}
                            onChange={this.update('email')}
                            className="login-input"
                            placeholder="Email"/>
                        
                    
                        <input type="password"
                            value={this.state.password}
                            onChange={this.update('password')}
                            className="login-input"
                            placeholder="Password"/>
                       
                    
                        <type="submit" className="login_button">Sign In</button>
                    </div>



                    
                    <div className="modal-footer">
                        
                                <a 
                                className='signup-link'
                                onClick={ () =>this.props.openModal('signup') }>Create an account
                                </a>
                    </div>
                </form>
            </div>
        );
    }
}
export default withRouter(SessionForm);