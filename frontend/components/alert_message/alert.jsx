// "import React from 'react'
// import {closeModal} from '../../actions/modal_actions'
// import  {connect} from 'react-redux'

// export  class Alert extends React.Component {
//     constructor(props){
//         super()
//     }
//     render() {
//         const { modal, closeModal } = this.props
//         if (!modal) {
//             return null;
//         }
//         return (
//             <div className="modal-background" onClick={closeModal}>
//                 <div className="modal-child" onClick={e => e.stopPropagation()}>
//                     <h1>you need to sign up to put the product to the cart </h1>
//                 </div>
//             </div>
//         )
//     }
// }

// const mapst = state => {
//     return {
//         modal :state.ui.modal 
//     }
// }
// const mapdt = dispatch => {
//     return {
//         closeModal : ()=> dispatch(closeModal())
//     }
// }

// export default connect(mapst, mapdt)(Alert);"