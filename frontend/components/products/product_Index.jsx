import React from 'react'; 
import ProductIndexItem from './product_Index_Item'

class ProductIndex extends React.Component {
    constructor(props) {
        super(props)

    }

    componentDidMount(){
     
     this.props.getProducts()
    }
    render() {
        const products = this.props.products
        const display = products.map(product => <ProductIndexItem product={product} key={product.id} className="productIndex"/>)
        return (
            <div className="productIndex-page">
               
    
                <ul className="all-products">
                    {display}
                    
                </ul>
                
            </div>    
        )
    }
}




export default ProductIndex

