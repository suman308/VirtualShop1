import { getOrderLists, updateOrderList} from '../../actions/OrderList'
import { getProducts} from "../../actions/product_actions"
import {getCarts} from '../../actions/cart_action'
import {deleteOrderList} from '../../actions/OrderList'
import {connect} from 'react-redux'; 
import orderList from './order_list'

const mapst = state => {
    const orderLists = Array.from(state.entities.orderlists)
    const products = Array.from(state.entities.products)
    const currentUser = state.session.currentUser
    const carts = Array.from(state.entities.carts)
    return {
        orderLists: orderLists, 
        products: products,
        currentUser: currentUser,
        carts: carts

    }
}

const mapdt = dispatch => {
    return {
        getOrderLists : ()=> dispatch(getOrderLists()),
        getProducts : ()=> dispatch(getProducts()), 
        updateOrderList: (orderlist)=> dispatch(updateOrderList(orderlist)),
        getCarts: ()=> dispatch(getCarts()),
        deleteOrder: (Id)=> dispatch(deleteOrderList(Id))
    }
}

export default connect(mapst, mapdt)(orderList)