import React from 'react';
import { Link } from 'react-router-dom'
class IndexItem extends React.Component {
    constructor(props) {
        super(props)
    }


    render() {
        const productItem = this.props.product

        const image = <img className="image-holder-box1" src={productItem.imageUrls[1]} />

        return (
           
            <div className="outer-most-box1">

                <Link to={`/product/show/${productItem.id}`} >
                    <div className="image-holder-box1" >
                        {image}
                    </div>
                </Link>

                <div className="pic-price-holder1">
                    <h4 className="name-of-pic"> {productItem.name}</h4>
                    <h5 className="price-of-pic1">  ${productItem.price}</h5>
                </div>
            </div>

        )
    }
}

export default IndexItem;