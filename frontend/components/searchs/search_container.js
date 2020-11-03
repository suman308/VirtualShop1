import {connect} from 'react-redux'
import {searchProducts, clearProducts} from '../../actions/product_actions';
import Search from './search'; 

const mapst = state => {
    return {
        products: state.entities.products
    }
}

const mapdt = dispatch => {
    return {
        searchProducts: (query)=> dispatch(searchProducts(query)), 
        clearProducts: ()=> dispatch(clearProducts())
    }
}
export default connect(mapst, mapdt)(Search)