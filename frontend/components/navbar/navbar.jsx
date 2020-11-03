import React from 'react'; 
import {withRouter} from 'react-router-dom'

class Navbar extends React.Component {
constructor(props){
    super(props)
    this.state = {
        category: ""
    }
    this.handleClick = this.handleClick.bind(this)
    
}
handleClick(e){
    this.props.history.push("/index")
    this.props.clearProducts();
    const val = e.currentTarget.attributes[1] 
    const category = (val.value)
    const query = new Object()
     query["category"]= category
    console.log(this.props)
    this.props.searchProducts(query)
  
}
render(){
    return (
        <div className="Navbar">
            <h4 className="Category" value='Art' onClick={this.handleClick}>Art</h4>
            <h4 className="Category" value='Electronics' onClick={this.handleClick}>Electronics</h4>
            <h4 className="Category" value='Books' onClick={this.handleClick}>Books</h4>
            <h4 className="Category" value='Foods' onClick={this.handleClick}>Foods</h4>
            <h4 className="Category" value='Clothes' onClick={this.handleClick}>Clothes</h4>
            <h4 className="Category" value='Shoes' onClick={this.handleClick}>Shoes</h4>
            <h4 className="Category" value='Jewelry' onClick={this.handleClick}>Jewelry</h4>
            <h4 className="Category" value='Other' onClick={this.handleClick}>Other</h4>
        </div>
    )

}
}
export default withRouter(Navbar);