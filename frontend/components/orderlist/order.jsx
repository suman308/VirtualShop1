import React from 'react'; 

class Order extends React.Component {
constructor(props){
    super(props)
}
render() {
    if (this.props) {
       
    const product = this.props.product
    const quantity = this.props.quantity
    const price = (product.price * quantity).toFixed(2)
    const name = product.name 
    const image = <img className="image-order" src={product.imageUrls[1]} />
    const image1 = <img className="image-order1" src={product.imageUrls[2]} />
   
   
    return (
        <div className="outer-outer-box-order">
            <div className="outer-box-order"> 
                <div className="order-image-holder">
                    <div className="small-name-pic">
                        {image1}
                        <div className="text-name"> {name}</div>
                    </div>
                    {image}
                </div>
                <div className="order-quantity">
                    <h4 className="text-quantity" > Quantity = {quantity}</h4>
                    <h4 className="text-price" > Amount = ${price}</h4>
                </div>
            </div>
           
        </div>
    )
    
}else {
    return null;
}
}
}
export default Order