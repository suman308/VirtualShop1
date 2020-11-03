 import {connect} from 'react-redux'; 
 import {logout} from '../../actions/session';
 import Greeting from './greeting';
 import {openModal} from '../../actions/modal_actions'
 import {getProducts, clearProducts} from '../../actions/product_actions'


 const mapst = state => {
    return {
        currentUser: state.session.currentUser
    }
 }


  const mapdt = dispatch => {
    return {
        logout:()=> dispatch(logout()), 
        getProducts: ()=> dispatch(getProducts()),
        clearProducts:()=> dispatch(clearProducts()),
        openModal:modal=> dispatch(openModal(modal))

    }
}

export default connect(mapst, mapdt)(Greeting)