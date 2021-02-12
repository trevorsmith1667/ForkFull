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

    
    componentDidMount() {
        this.props.clearErrors();
    }
    
    loginDemo(e) {
    e.preventDefault();
    e.stopPropagation();
      const demo = {
          email: "demo_user@gmail.com",
          password: "123456"
      }

      this.props.demoForm(demo).then(this.props.closeModal)
      }
    

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }


    
    handleErrors(errType){
                
        return this.props.errors.filter(error => error.includes(errType))
    }
    
    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user).then(this.props.closeModal);
    };
    



    render() {
        const allErrors = this.props.errors.map((error, i) => (<li key={i}>{error}</li>))
        if (this.props.formType === 'login') {
            return (
                <div className="login-form-container">
                    <form onSubmit={this.handleSubmit} className="login-form-box">
                        <button onClick={this.props.closeModal} className="close-modal" >×</button>
                        <h1 className="modal-header">Please Sign In</h1>
                        <ul className="error-list">{allErrors}</ul>

                        <div className="login-form">
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

                                    
                            <button type="submit" className="login-button">Sign In</button>
                            <button className="demo-button" onClick={this.loginDemo}>Demo Sign In</button>
                        </div>
                    </form>

                    <span className="signup-link">New to ForkFull? &nbsp;
                         {this.props.otherForm}
                    </span>  
                </div>
            );
        }
          else  {
            return (
                    <div className="login-form-container">
                        <form onSubmit={this.handleSubmit} className="login-form-box">
                            <button onClick={this.props.closeModal} className="close-modal" >×</button>
                            <h1 className="modal-header">Welcome to ForkFull</h1>

                            <ul className="error-list">{this.handleErrors('Username')}</ul>
                            <div className="login-form">
                                <input type="string"
                                    value={this.state.username}
                                    onChange={this.update('username')}
                                    className="login-input"
                                    placeholder="Username"/>
                            

                            <ul className="error-list">{this.handleErrors('Email')}</ul>
                                <input type= "string"
                                    value={this.state.email}
                                    onChange={this.update('email')}
                                    className="login-input"
                                    placeholder="Email"/>
                        `           
                        
                    
                        <ul className="error-list">{this.handleErrors('Password')}</ul>
                                <input type="password"
                                    value={this.state.password}
                                    onChange={this.update('password')}
                                    className="login-input"
                                    placeholder="Password"/>

                                <button type="submit" className="signup-button">Create Account</button>
                                <button className="demo-button" onClick={this.loginDemo}>Demo Sign In</button>

                            </div>
                    </form>
                </div>

            )
        }
    }
}
export default withRouter(SessionForm);