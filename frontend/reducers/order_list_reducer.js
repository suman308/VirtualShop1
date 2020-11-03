import { RECEIVE_ORDERLIST, RECEIVE_ORDERLISTS, RECEIVE_ERRORS, REMOVE_ORDERLIST, REMOVE_ERRORS } from '../actions/OrderList.js'

const orderlistReducer = (state = {}, action) => {
    const nextState = Object.assign({}, state)
    switch (action.type) {
        case RECEIVE_ORDERLISTS:
            return action.orderlists
        case RECEIVE_ORDERLIST:
            nextState[action.orderlist.Id] = action.orderlist
            return nextState;
        case REMOVE_ORDERLIST:
            delete nextState[action.orderlistId]
            return nextState;
        case REMOVE_ERRORS:
            return []
        default:
            return state
    }

}
export default orderlistReducer;