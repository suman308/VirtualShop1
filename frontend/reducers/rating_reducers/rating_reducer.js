import { RECEIVE_ALL_RATINGS, RECEIVE_RATING, REMOVE_RATING, CLEAR_RATINGS} from '../../actions/rating_action';


const ratingReducer = (state = {}, action) => {
    const nextState = Object.assign({}, state)
    switch (action.type) {
        case RECEIVE_ALL_RATINGS:
            return action.ratings
        case RECEIVE_RATING:
            nextState[action.rating.id] = action.rating
            return nextState;
        case REMOVE_RATING:
            delete nextState[action.ratingId]
            return nextState;
        case CLEAR_RATINGS: 
            return  []
        default:
            return state
    }

}
export default ratingReducer;