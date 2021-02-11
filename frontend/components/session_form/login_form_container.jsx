import { connect } from 'react-redux';
import React from 'react';
import { login, clearErrors} from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import SessionForm from './session_form';
import {Link} from  'react-router-dom'

const mapStateToProps = ({ errors }) => {
    return {
        errors: errors.session,
        formType: 'login',
    };
};

const mapDispatchToProps = dispatch => {
    return {
        demoForm: (demo) => dispatch(login(demo)),
        processForm: (user) => dispatch(login(user)),
        otherForm: (
                <button onClick={() => dispatch(openModal('signup'))}>
                    Create an account
                </button>
            
            ),
        clearErrors: () => dispatch(clearErrors()),
        // signup: (user) => dispatch(signup(user))
        //openModal: () => dispatch(openModal())
        closeModal: () => dispatch(closeModal())
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);