import { connect } from 'react-redux';
import { searchProducts, clearProducts } from '../../actions/product_actions';
import Navbar from './navbar'
const mapst = state => {
    return {
        products: state.entities.productsc 

    }

}
const mapdt = dispatch => {
    return {
        searchProducts: (query) => dispatch(searchProducts(query)),
        clearProducts: () => dispatch(clearProducts()),
        
    }
}

export default connect(mapst, mapdt)(Navbar)