import React from 'react';
import {Link } from 'react-router-dom'
class ProductIndexItem extends React.Component {
        constructor(props){
        super(props)
        }

        
    render() {
        const productItem = this.props.product

        const image =  <img className="image-holder-box" src={productItem.imageUrls[0]} />

        return (
            
                <div className="outer-most-box"> 
                          <Link to={`/product/show/${productItem.id}`} >
                                <div className= "image-holder-box" >
                                                {image}
                                </div>
                         </Link>

                                <div className="rating">
                                </div>

                                <div className="free-delivered">

                                </div>


                                <div className="pic-price-holder">
                                        <h4 className="name-of-pic"> {productItem.name}</h4>
                                        
                                        <h5 className="price-of-pic">  ${productItem.price}</h5>
                                </div>

                                      
                                <div className="below-the-iamge-holder-box"> 
                                
                                </div>
                </div>
                
       )
   }
}

export default ProductIndexItem;