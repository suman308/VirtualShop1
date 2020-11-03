import { RECEIVE_CURRENT_USER, RECEIVE_SESSION_ERRORS, REMOVE_ERRORS} from '../actions/session'
import {CLOSE_MODAL} from '../actions/modal_actions'

const sessionErrorReducer = (state=[], action) => {
    Object.freeze(state);
    
   switch(action.type){

        case RECEIVE_SESSION_ERRORS:
            return action.errors;
       case REMOVE_ERRORS:
            return [];
       case RECEIVE_CURRENT_USER: 
             return [];
       case CLOSE_MODAL:
            return [] 
       default: 
           return state;
   }
}
  

export default sessionErrorReducer;  