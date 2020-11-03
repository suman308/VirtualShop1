import {combineReducers} from 'redux'; 
import sessionReducer from './session'
import errorReducer from './error_reducer';
import uiReducer from './ui_reducer'
import entitiesReducer from './entities_reducer'
const rootReducer = combineReducers({
    session: sessionReducer, 
    errors: errorReducer, 
    ui : uiReducer,
    entities: entitiesReducer
})

export default rootReducer;