import React from 'react';
import ProductImagesList from './productImagesList';
import Comment from '../comments/commentContainer'
import Rating from '../rating/rating';
import { starIcon, halfStarIcon, emptyStarIcon } from '../../../app/assets/images/icons'
class ProductShow extends React.Component {
    constructor(props){
        super(props)
        this.state ={
            quantity:" ", 
            modal: " ",
            cart_id:"", 
            product_id:"", 
            checked_out: false ,
            user_id:"", 
            body:"", 
            starRating: [emptyStarIcon, emptyStarIcon, emptyStarIcon, emptyStarIcon, emptyStarIcon], 
            rating:0
        }

        this.handleChange = this.handleChange.bind(this)
        this.handleChange1 = this.handleChange1.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
        this.handleSubmit1 = this.handleSubmit1.bind(this)
        this.closeAlert = this.closeAlert.bind(this)
        this.handleModal = this.handleModal.bind(this)
        this.random = this.random.bind(this)
    }
    
    componentDidMount(){
    this.props.getRatings(this.props.match.params.id)
    this.props.getProduct(this.props.match.params.id);
    this.props.getCarts();
    this.props.getUsers();
     
    } 
    random(){
        var x = Math.floor((Math.random() * 10) + 1);
        return x;
    }
    closeAlert(){
        this.setState({modal:""})
    }
    starSeq(e, num) {


        let starSeq = [];

        for (let i = 0; i < num; i++) {
            starSeq.push(starIcon)
        }

        for (let j = 5; j > num; j--) {
            starSeq.push(emptyStarIcon)
        }
        this.setState({ starRating: starSeq, rating: num })
    }

    handleChange(e) {
            if(this.props.currentUser){
            const product_id = this.props.product.id
            const Id = this.props.currentUser.id
            const carts = Array.from(this.props.carts)
            const cart = carts.find(car => car.user_id == Id)    
            const cart_id = cart.id
            const q = parseInt(e.currentTarget.value)
            this.setState({quantity : q })
            this.setState({cart_id : cart_id})
            this.setState({ product_id: product_id})
            this.setState({user_id: Id})
            } else {
                this.setState({
                    modal: <div className="modal-background" >
                        <div className="modal-child" onClick={e => e.stopPropagation()}>
                            <div className="alert-box">
                                ALERT
                        <div className="alert-message">
                                    you need to login to put the product to the cart
                        </div>
                                <div className="alert-button-holder">
                                    <button className="modal-close-button" onClick={this.closeAlert}> Cancel </button>
                                    <button className="modal-close-button" onClick={this.handleModal} > Log In</button>
                                </div>
                            </div>


                        </div>
                    </div>
            } )
             
    }
}
    handleModal(){
        this.closeAlert();
        this.props.openModal('login'); 

    }
    handleSubmit(e){
        
        if(this.props.currentUser){
        e.preventDefault();
        
        this.props.addToCart(this.state); 
        
        
  
    } else {
        
            this.setState({
                modal: <div className="modal-background" >
                    <div className="modal-child" onClick={e => e.stopPropagation()}>
                        <div className="alert-box">
                            ALERT
                        <div className="alert-message">
                                you need to login to put the product to the cart
                        </div>
                            <div className="alert-button-holder">
                                <button className="modal-close-button" onClick={this.closeAlert}> Cancel </button>
                                <button className="modal-close-button" onClick={this.handleModal } > Log In</button>
                            </div>
                        </div>


                    </div>
                </div>
            })
    }
}
    handleSubmit1() {
        if (this.props.currentUser){
            const obj = new Object();
            obj.product_id = this.state.product_id
            obj.user_id = this.state.user_id
            obj.product_id = this.state.product_id
            obj.product_id = this.state.product_id
            obj.rating = this.state.rating
            obj.body = this.state.body
            this.props.createComment(obj)
            this.props.createRating(obj)
            window.location.reload()
        } else {
            this.setState({
                modal: <div className="modal-background" >
                    <div className="modal-child" onClick={e => e.stopPropagation()}>
                        <div className="alert-box">
                            ALERT
                        <div className="alert-message">
                                you need to sign in to comment
                        </div>
                        <button className="modal-close-button" onClick={this.closeAlert}> Cancel</button>
                        </div>


                    </div>
                </div>
            })
    }

}
    handleChange1(e) {
       
        const user_id = this.props.currentUser.id
        const product_id = this.props.product.id
        const body = e.currentTarget.value
        this.setState({
            user_id: user_id,
            product_id: product_id,
            body: body

        })
   

}

    render(){
       
         const pro = this.props.product
         const carts = this.props.carts
         const ratings = this.props.ratings
         
         if (pro && carts ) {
            const images = pro.imageUrls
           
        return (
            <div>
            <div>
            <div className="main-product-show">
               {this.state.modal}
                    <form onSubmit={this.handleSubmit}>
                    <div className="inline-images-holder">
                
                    
                                    <div className="productInformation"> 
                                            
                                                <ProductImagesList images={images}/>

                                           
                                    </div>

                        <div className="Outer-productInformation">
                            <div className="productInformation">
                                <h3 className="productName">{pro.name}</h3>

                                <h3 className="productPrice">${pro.price}</h3>

                                <h3 className="productDetails">{pro.details}</h3>
                            </div>



                            <div className="quantityContainer">
                                <label htmlFor="quantity" className="label-quantity"> Quantity</label>
                                <br/>
                                <select className="quantity" type="select" onChange={this.handleChange}> 
                                    
                                    <option value="1" >1 </option>
                                    <option value="2" >2 </option>
                                    <option value="3" >3 </option>
                                    <option value="4" >4 </option>
                                    <option value="5" >5 </option>
                                    <option value="6" >6</option>
                                    <option value="7" >7 </option>
                                    <option value="8" >8</option>
                                    <option value="9" >9</option>
                                    <option value="10" >10</option>
                                    <option value="11" >11 </option>
                                    <option value="12" >12 </option>
                                    <option value="13" >13 </option>
                                    <option value="14" >14</option>
                                    <option value="15" >15</option>
                                    <option value="16" >16</option>
                                    <option value="17" >17</option>
                                    <option value="18" >18</option>
                                    <option value="19" >19 </option>
                                    <option value="20" >20</option>
                                    <option value="21" >21</option>
                                    <option value="22" >22</option>
                                    <option value="23" >23</option>
                                    <option value="24" >24</option>
                                    <option value="25" >25</option>
                                    <option value="26" >26</option>
                                    <option value="27" >27</option>
                                    <option value="28" >28</option>
                                    <option value="29" >29</option>
                                    <option value="30" >30</option>
                                </select>  
                            </div>
                        
                            <div className="OuterBox-AddToCartContainer">
                                <div className="AddToCartContainer">

                                    <input type="submit" className="AddToCart" value="Add to Cart"/>

                                </div>
                            </div>
                        </div>
                    </div> 
                    </form>
                    
                    <Rating ratings= {ratings}  key={pro.Id}/>
                    
                   <div className="comment-holder">
                         <h1 className="title-comment"> Comments for the {pro.name}</h1>
                         <div className="line1"></div>
                    </div>
                    <div className="all-comments-holder">
                        <Comment product={pro} key={pro.name} ratings={ratings} />
                    </div>
            </div>
               
            </div>
                
             <form onSubmit={this.handleSubmit1} >
                    <h1 className="rate"> Add rating</h1>
                    <div className='review-form-stars'>

                        <span className='rating-star' onMouseEnter={e => this.starSeq(e, 1)}>{this.state.starRating[0]}</span>
                        <span className='rating-star' onMouseEnter={e => this.starSeq(e, 2)}>{this.state.starRating[1]}</span>
                        <span className='rating-star' onMouseEnter={e => this.starSeq(e, 3)}>{this.state.starRating[2]}</span>
                        <span className='rating-star' onMouseEnter={e => this.starSeq(e, 4)}>{this.state.starRating[3]}</span>
                        <span className='rating-star' onMouseEnter={e => this.starSeq(e, 5)}>{this.state.starRating[4]}</span>


                    </div>
                    <div className="form">
                    

                    <input type="text" className="input-comment" placeholder="Write  comment...." onChange={this.handleChange1}/>

                    <input type="submit" className="submit" value="Add Comment" />
                    </div>
                </form>
            </div>
        ) }
        else {
            return null
        }
    }
}

export default ProductShow;
