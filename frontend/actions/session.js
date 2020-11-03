import * as APIUtil from '../utils/session'

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOG_OUT_CURRENT_USER = 'LOG_OUT_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';
export const REMOVE_ERRORS = 'REMOVE_ERRORS'

export const receiveCurrentUser = user => ({
    type: RECEIVE_CURRENT_USER,
    user
});

export const receiveErrors = errors => ({
    type: RECEIVE_SESSION_ERRORS, 
    errors
})

export const logoutCurrentUser = () => ({
    type: LOG_OUT_CURRENT_USER,
    
});

export const signup = user => dispatch => (
    APIUtil.signup(user).then(user => (
        dispatch(receiveCurrentUser(user))
    ), err => (
        dispatch(receiveErrors(err.responseJSON))
    ))
);

export const login = user => dispatch => (
    APIUtil.signin(user).then(user => (
        dispatch(receiveCurrentUser(user))
    ), err => (
        dispatch(receiveErrors(err.responseJSON))
    ))
);

export const logout = () => dispatch => (
    APIUtil.logout().then(() => (
        dispatch(receiveCurrentUser(null))
    ))
);

export const removeErrors = ()=> {
    return {
        type:REMOVE_ERRORS, 
    }
}