import {combineReducers} from 'redux'
import productReducer from './product_reducers/product_reducer' 
import orderlistReducer from './order_list_reducer.js'
 import cartReducer from "./carts/cart_reducer"
import commentReducer from "./comments/comment_reducer"
import userReducer from './users/user_reducer'
import ratingReducer  from './rating_reducers/rating_reducer' ;
const entitiesReducer = combineReducers({
    products: productReducer, 
    orderlists: orderlistReducer, 
    carts: cartReducer,
    comments :commentReducer, 
    users: userReducer, 
    ratings: ratingReducer
})

export default entitiesReducer;