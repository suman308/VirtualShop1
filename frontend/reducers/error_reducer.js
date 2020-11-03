import {combineReducers} from 'redux'; 
import sessionErrorReducer from './session_errors'

const  errorReducer =combineReducers({
   errors: sessionErrorReducer, 
})

export default errorReducer