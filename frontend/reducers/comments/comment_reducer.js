import {RECEIVE_ALL_COMMENTS, REMOVE_COMMENT, UPDATE_COMMENT, CLEAR_COMMENTS, RECEIVE_COMMENT } from '../../actions/comment_action'; 

const commentReducer = (state = {}, action) => {
    Object.freeze(state);
    const nextState = Object.assign({}, state)
    switch (action.type) {
        case RECEIVE_ALL_COMMENTS:
            return action.comments
        case RECEIVE_COMMENT:
            nextState[action.comment.Id] = action.comment
            return nextState;
        case CLEAR_COMMENTS:
            return {}
        case REMOVE_COMMENT:
            delete nextState[action.commentId]
            return nextState;
        default:
            return state
    }

}
export default commentReducer;