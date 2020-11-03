import {connect} from 'react-redux'; 
import {getComment, getComments, createComment} from '../../actions/comment_action'; 
import {getUsers} from '../../actions/user_action'
import Comment from './comments';


const mpst = (state, ownProps) => {
    const productId = ownProps.product.id
    const currentUser = state.session.currentUser
    
    return {
        comments : Object.values(state.entities.comments),
        users: Object.values(state.entities.users),
        currentUser: currentUser, 
        productId : productId

    }
    
}

const mapdt = dispatch => {
    return {
        getComment : (Id)=> dispatch(getComment(Id)), 
        getComments: (product_id)=> dispatch(getComments(product_id)), 
        createComment: (comment)=> dispatch(createComment(comment)),
        getUsers : ()=> dispatch(getUsers())
    }
}

export default connect(mpst, mapdt)(Comment)