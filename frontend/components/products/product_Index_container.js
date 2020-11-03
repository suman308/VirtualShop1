import ProductIndex from './product_Index';
import {getProduct, getProducts} from '../../actions/product_actions'
import {connect} from 'react-redux'
const mapst = state => {
    return {
        products : Object.values(state.entities.products)
    }
}

const mapdt = dispatch => {
    return {
        getProduct: (productId) => dispatch(getProduct(productId)),
        getProducts: ()=> dispatch(getProducts())
    }
}

export default connect(mapst,mapdt)(ProductIndex)