import {REMOVE_USER, RECEIVE_USER, RECEIVE_ALL_USERS, REMOVE_USERS} from '../../actions/user_action'; 

const userReducer = (state = {}, action) => {
    Object.freeze(state);
    const nextState = Object.assign({}, state)
    switch (action.type) {
        case RECEIVE_ALL_USERS:
            return action.users
        case RECEIVE_USER:
            nextState[action.user.id] = action.user
            return nextState;
        case REMOVE_USERS:
            return {}
        case REMOVE_USER:
            delete nextState[action.userId]
            return nextState;
        default:
            return state
    }

}
export default userReducer;