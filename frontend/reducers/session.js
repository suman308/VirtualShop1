import {RECEIVE_CURRENT_USER,  LOG_OUT_CURRENT_USER} from '../actions/session'



const _nullSession = {
    currentUser: null
};

const sessionReducer=  (state = _nullSession, action) => {
    Object.freeze(state)
    const  nextState = Object.assign({}, state)
    switch (action.type) {
        case RECEIVE_CURRENT_USER:
            nextState.currentUser = action.user
            return nextState
        case LOG_OUT_CURRENT_USER:
            return _nullSession;
        default:
            return state;
    }
};

export default sessionReducer;