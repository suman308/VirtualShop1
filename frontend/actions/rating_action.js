import * as AllUtil from '../utils/ratings'
import { receiveErrors } from './product_actions';

export const RECEIVE_ALL_RATINGS = 'RECEIVE_ALL_RATINGS';
export const RECEIVE_RATING = 'RECEIVE_RATING';
export const UPDATE_RATING = 'UPDATE_RATING';
export const REMOVE_RATING = 'REMOVE_RATING';
export const CLEAR_RATINGS = "CLEAR_RATINGS";

export const receiveRatings = (ratings) => {
    return {
        type: RECEIVE_ALL_RATINGS,
        ratings
        
    }
}

export const receiveRating = (rating) => {
    return {
        type: RECEIVE_RATING,
        rating
    }
}

export const removeRating = (ratingId) => {
    return {
        type: REMOVE_RATING,
        ratingId
    }
}
export const clearRatings = () => {
    return {
        type: CLEAR_RATINGS

    }
}

export const getAllRatings = (productId) => dispatch => {
    return AllUtil.getAllRatings(productId)
        .then(ratings => dispatch(receiveRatings(ratings)), errors => dispatch(receiveErrors(errors.responseJSON)))
}

export const getRating = (ratingId) => dispatch => {
    return AllUtil.getRating(ratingId)
        .then(rating => dispatch(receiveRating(rating)), errors => dispatch(receiveErrors(errors.responseJSON)))
}

// export const updateRating = (rating) => dispatch => {
//     return AllUtil.updateRatin(rating)
//         .then(rating => dispatch(receiveRating(rating)), errors => dispatch(recieveErrors(errors.responseJSON)))
// }

// export const deleteRating= (ratingId) => dispatch => {
//     return AllUtil.deleteComment(ratingId)
//         .then(() => dispatch(removeComment(ratingId)), errors => dispatch(receiveErrors(errors.responseJSON)))
// }

export const createRating = (rating) => dispatch => {
    return AllUtil.createRating(rating)
        .then((rating) => dispatch(receiveRating(rating)), errors => dispatch(receiveErrors(errors.responseJSON)))
}