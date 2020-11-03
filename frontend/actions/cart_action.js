import * as AllUtil from '../utils/carts'
export const RECEIVE_ALL_CARTS = 'RECEIVE_ALL_CARTS';
export const RECEIVE_CART = 'RECEIVE_CART';
export const UPDATE_CART = 'UPDATE_CART';
export const REMOVE_CART = 'REMOVE_CART';
export const REMOVE_ERRORS = 'REMOVE_ERRORS';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const receiveCarts = (carts) => {

    return {
        type: RECEIVE_ALL_CARTS,
        carts
    }



}

export const receiveCart = (cart) => {
    return {
        type: RECEIVE_CART,
        cart,
    }
}

export const removeCart = (cardId) => {
    return {
        type: REMOVE_CART,
        cardId
    }
}



export const receiveErrors = (errors) => {
    return {
        type: RECEIVE_ERRORS,
        errors
    }
}

export const removeErrors = () => {
    return {
        type: RECEIVE_ERRORS,

    }
}

export const getCarts = () => dispatch => {
    return AllUtil.getAllCarts()
        .then(carts => dispatch(receiveCarts(carts)), errors => dispatch(receiveErrors(errors)))
}

export const getCart = (cartId) => dispatch => {
    return AllUtil.getCart(cartId).then(cart => dispatch(removeCart(cart)), errors => dispatch(removeErrors(errors)))
}

export const deleteCart = (cartId) => dispatch => {
    return AllUtil.deleteCart(cartId).then(() => dispatch(removeCart(cartId)), errors => receiveErrors(errors))
}

export const createCart = (cart) => dispatch => {
    return AllUtil.createCart(cart).then((cart)=> dispatch(receiveCart(cart)), errors=> receiveErrors(errors))
}