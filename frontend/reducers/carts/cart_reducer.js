import { RECEIVE_ALL_CARTS, REMOVE_CART, RECEIVE_CART  } from '../../actions/cart_action';


const cartReducer = (state = {}, action) => {
    const nextState = Object.assign({}, state)
    switch (action.type) {
        case RECEIVE_ALL_CARTS:
            return action.carts
        case RECEIVE_CART:
            nextState[action.cart.id] = action.product
            return nextState;
        case REMOVE_CART:
            delete nextState[action.cartId]
            return nextState;
        default:
            return state
    }

}
export default cartReducer;