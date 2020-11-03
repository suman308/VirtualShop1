import * as AllUtil from '../utils/comments' 
import { receiveErrors } from './product_actions';

export const RECEIVE_ALL_COMMENTS = 'RECEIVE_ALL_COMMENTS';
export const RECEIVE_COMMENT= 'RECEIVE_COMMENT';
export const UPDATE_COMMENT = 'UPDATE_COMMENT';
export const REMOVE_COMMENT = 'REMOVE_COMMENT';
export const REMOVE_ERRORS = 'REMOVE_ERRORS';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const CLEAR_COMMENTS = "CLEAR_COMMENTS";

export const receiveComments =(comments)=> {
    return {
        type: RECEIVE_ALL_COMMENTS, 
        comments 
    }
}

export const receiveComment = (comment)=> {
    return {
        type: RECEIVE_COMMENT, 
        comment
    }
}

export const removeComment = (commentId)=> {
    return {
        type: REMOVE_COMMENT, 
        commentId
    }
}
export const clearComments = ()=> {
    return {
        type: CLEAR_COMMENTS

    }
}

export const getComments = (product_id)=> dispatch=> {
    return AllUtil.getAllComments(product_id)
    .then( comments  => dispatch(receiveComments(comments)), errors=> dispatch(receiveErrors(errors.responseJSON)))
}

export const getComment = (commentId)=> dispatch=> {
    return AllUtil.getComment(commentId)
    .then(comment=> dispatch(receiveComment(comment)), errors=> dispatch(receiveErrors(errors.responseJSON)))
}

export const updateComment = (comment)=> dispatch=>{
    return AllUtil.updateComment(comment)
    .then(comment=> dispatch(receiveComment(comment)), errors=> dispatch(recieveErrors(errors.responseJSON)))
}

export const deleteComment = (commentId)=> dispatch=>{
 return AllUtil.deleteComment(commentId)
 .then(()=> dispatch(removeComment(commentId)), errors=> dispatch(receiveErrors(errors.responseJSON)))
}

export const createComment = (comment)=> dispatch=> {
    return AllUtil.createComment(comment) 
    .then ((comment)=> dispatch(receiveComment(comment)), errors=>dispatch(receiveErrors(errors.responseJSON)))
}