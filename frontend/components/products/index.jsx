import React from 'react';
import IndexItem from './indexItem'

class Index extends React.Component {
    constructor(props) {
        super(props)

    }

    componentDidMount() {

        this.props.getProducts()
    }
    render() {
        const products = this.props.products
        const dis = products.map(product => <IndexItem product={product} key={product.id} className="productIndex1" />)
        function shuffleArray(array) {
            for (var i = array.length - 1; i > 0; i--) {
                var j = Math.floor(Math.random() * (i + 1));
                var temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
            return array
        }
        const display = (shuffleArray(dis)).slice(6, 10);
        const display1 = (shuffleArray(dis)).slice(11, 20);
        return (
            <div >
                <div className="index1">
                   
                        
                    
                        <h1 className="moto"> Virtual-Shop is  online  platform for buying and selling unique and artistic products</h1>
                </div>
                   <div className="divider1"></div>
                    <div>
                        <br/>
                        <h1 className="popular-items1"> Best selling products </h1>
                       
                        <ul className="all-products1">
                            {display}

                        </ul>

                    </div>
                <div className="divider1"></div>
                        <div className="site-pic">
                            <img src="https://firebasestorage.googleapis.com/v0/b/slide-me-3f77d.appspot.com/o/vase%20.jpg?alt=media&token=0d85e24c-56e2-4c73-9f7e-419f965498f0" className="ImageB" />
                           <h1 className="text"> Site for the best artistic and unique products</h1>
                            <img src="https://firebasestorage.googleapis.com/v0/b/slide-me-3f77d.appspot.com/o/antic.jpg?alt=media&token=a9ef18bb-6e00-49ae-9b43-852a86f7ebee" className="ImageB"/>
                            
                        </div>
                        <div className="site-pic">
                            <img src="https://firebasestorage.googleapis.com/v0/b/slide-me-3f77d.appspot.com/o/jewel.jpg?alt=media&token=c59e2562-a313-4605-be3c-47452d3dbda3" className="ImageC" />
                            <h1 className="text">Most trusted site with largest number of customer base </h1>
                        </div>
                   
                <br />
                <div className="divider1"></div>
                <h1 className="popular-items1"> Most popular items right now </h1>
                    <ul className="all-products1">
                        {display1}

                    </ul>

                </div>
              

        )
    }
}
export default Index;