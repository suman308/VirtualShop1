import React from 'react'; 
import {closeModal} from '../../actions/modal_actions';
import {connect}from 'react-redux'; 
import LoginFormContainer from '../../components/sessions/signin_container'; 
import SignUpFormContainer from '../../components/sessions/signup_container'; 


class  Modal extends React.Component{
    constructor(props){
        super()
    }
    render(){
        const {modal, closeModal} = this.props 
        if (!modal){
            return null;
        }
        let component; 
        switch (modal) {
            case 'login':
                component = <LoginFormContainer />;
                break;
            case 'signup':
                component = <SignUpFormContainer />;
                break;
            default:
                return null;
        }
        return (
            <div className="modal-background" onClick={closeModal}>
                <div className="modal-child" onClick={e => e.stopPropagation()}>
                    {component}
                </div>
            </div>
        )
    }






}
const mapst = state => {
    return {
        modal : state.ui.modal
    }
}

const mapdt = dispatch => {
    return {
        closeModal:()=> dispatch(closeModal())
    }
}

export default connect(mapst, mapdt)(Modal);