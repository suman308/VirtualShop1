import * as AllUtil from '../utils/OrderList.js'
export const RECEIVE_ORDERLISTS = 'RECEIVE_ORDERLISTS';
export const RECEIVE_ORDERLIST = 'RECEIVE_ORDERLIST';
export const UPDATE_ORDERLIST = 'UPDATE_ORDERLIST';
export const REMOVE_ORDERLIST = 'REMOVE_ORDERLIST';
export const REMOVE_ERRORS = 'REMOVE_ERRORS';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const receiveOrderLists = (orderlists) => {

    return {
        type: RECEIVE_ORDERLISTS,
        orderlists
    }



}

export const receiveOrderList = (orderlist) => {
    return {
        type: RECEIVE_ORDERLIST,
        orderlist
    }
}

export const removeOrderList = (orderlistId) => {
    return {
        type: REMOVE_ORDERLIST,
        orderlistId
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

export const getOrderLists = () => dispatch => {
    return AllUtil.getOrderLists()
        .then(orderlists=> dispatch(receiveOrderLists(orderlists)), errors => dispatch(receiveErrors(errors)))
}

export const getOrderList = (orderlistId) => dispatch => {
    return AllUtil.getOrderList(orderlistId).then(orderlist => dispatch(removeOrderList(orderlist)), errors => dispatch(removeErrors(errors)))
}



export const deleteOrderList = (orderlistId) => dispatch => {
    return AllUtil.deleteOrderList(orderlistId).then(() => dispatch(removeOrderList(OrderListId)), errors => receiveErrors(errors))
}

export const createOrderList = (orderlist) => dispatch => {
    return AllUtil.createOrderList(orderlist).then((orderlist)=>dispatch(receiveOrderList(orderlist)), errors=> receiveErrors(errors) )
}

export const updateOrderList = (orderlist)=> dispatch => {
    return AllUtil.updateOrderList(orderlist).then((orderlist)=>dispatch(receiveOrderList(orderlist)), errors=> receiveErrors(errors))
}
