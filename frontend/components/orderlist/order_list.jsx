import React from 'react';
import Order from './order.jsx';
import {paypalIcon, visaIcon, discoverIcon, amexIcon, mastercardIcon} from '../../../app/assets/images/icons'
class OrderList extends React.Component {
    constructor(props){
        super(props)
        this.state  = { price : 0 }
    //    this.totalPrices = this.totalPrices.bind(this)
    //    this.doThis = this.doThis.bind(this)
           
    }
   componentDidMount(){
        this.props.getProducts(); 
        this.props.getOrderLists();
        this.props.getCarts();
        console.log("about to print")
        console.log(this.props.products)
    }
    //  doThis(){
    //      if (this.props){
    //          let p = this.totalPrices();
    //         this.setState({price:p})
    //      }else {
    //          null;
    //      }
    //  }
    // totalPrices(){
    //    const orders = this.props.orderLists
    //    const productIds = orders.map(order=> order.product_id)
    //    const prods = (this.props.products)
    //    console.log("printing the prods")
    //    console.log(this.props.orderLists)
    //    const products = prods.filter(product=> productIds.includes(product.Id))
    //    const lists = orders.map(order=> {
    //         let obj = new Object();
    //         const productId = order.product_id;
    //         const quantity = order.quantity;   
    //         obj.productId = productId 
    //         obj.quantity = quantity
    //         return obj;
    //    })
    //      console.log("printing the products")
    //      console.log(products)
    //     function fun (products, lists) {
    //         const  obj = Object.assign({},lists)
    //        for(let i= 0; i< products.length; i++){
    //         let pro = products.find(product=> product.Id == lists[i].productId)
    //          obj.product = pro; 
             
    //         }
            
    //         return obj
    //     }
        
        
    //    const productLists = fun(products, lists)
        
    //    function ram(productLists){
    //     let prices = 0
    //     productLists.forEach(order=> {
    //          prices = prices + (order.product.price * product.quantity)
             
    //     });
    //        return prices;
    //     }
    //     const prices = ram(productLists);
    //     return prices 
         
    // }
    
    render(){
        const products = this.props.products
        const count = products.length;
        const orderlists = this.props.orderLists

        if (this.props !== [] && this.props ) {

        const productIds = orderlists.map(order=> order.product_id)

        const orderProducts = orderlists.map((order, ind)=> {

            var ind = {}
            ind["productId"] = order.product_id
            ind["quantity"] = order.quantity
            ind["checked_out"] = order.checked_out
            ind["Id"] = order.id
            ind["product"] = " "
            return ind 
                });
    
         
        const prods = orderProducts.filter(pro=> productIds.includes(pro.productId.toString()))
        const finalObj = function(products, prods) {
            const  result = prods.map(order =>  {
                 let Id = order.productId;
                  let product = products.find(product=> product.id == Id);
                  order.product = product; 
                  return order
                  })
            return result 
        }
            
            let ram = finalObj(products, prods)
            const lists = (finalObj(products, prods)).map((obj, idx) => <Order 
            product={obj.product} 
            quantity={obj.quantity} 
            checkedOut={obj.checked_out} key={idx}/>)
           
            const message = <h1 className="No-item"> You do not  have items in the cart right now </h1>
            const output  = (products.length) ? lists : message;
            let pric = 0;
            
           console.log(ram)
            if (ram[0] && ram[0].product){
                for(let i= 0; i< ram.length; i++){
                    console.log(ram[i])
                    console.log(ram[i].quantity)
                    pric = (pric + (ram[i].product.price * ram[i].quantity))
                   
            }

        }
        const p = pric.toFixed(2)
        return (
              <div className="main-cart-page" >
                  <div className="just-under-main-cart">
                  <div className="under-main-cart">
                    <h1 className="items-in-cart">You have {count} item(s) in the cart</h1>
                        <div className="cart-outer"> 
                            <div className="cart">
                            {output} 
                        </div>  
                             
                        
                       
                        </div>
                 
                    
                 </div>
                
                <form className="checkout-container">
                    <h1 className="how-pay"> How You'll Pay</h1>
                    <div className="paying-method">
                        <div className="icon-holder-container">
                        <div className="icon-holder">
                            <input type="radio" name="one"   />
                            <br />
                            {paypalIcon}</div>
                        <div className="icon-holder"><input type="radio" name="one" className="radio-button" />
                            <br />
                            {discoverIcon}</div>
                        <div className="icon-holder"><input type="radio" name="one" className="radio-button" />
                            <br />{amexIcon}</div>
                        <div className="icon-holder"><input type="radio" name="one" className="radio-button" />
                            <br />{visaIcon}</div>
                        {/* <div className="icon-holder"><input type="radio" value="one" className="radio-button" />
                            <br />
                            {mastercardIcon}</div> */}
                        </div>
                    </div>
                        <h1 className="total-price"> Item(s) Total  ${p}  </h1> 
                        <h1 className="line"></h1>
                    <div className="check-out" onClick={this.handleClick}>
                          Check-Out
                    </div>
                </form>
                </div>
                {/* {this.doThis()} */}
            </div>
            
        )
        } else {
            return null;
        }
    }
}


export default OrderList; 
