import React from 'react'
import { searchIcon } from '../../../app/assets/images/icons'
import { withRouter } from 'react-router-dom'

class Search extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            name: ""
        }
        this.handleSubmit= this.handleSubmit.bind(this)
        this.handleChange= this.handleChange.bind(this)
       
    }
    handleChange(e){
       const query = (e.target.value).trim()
       this.setState({
           name: query
           
       })
    }
   
    handleSubmit(e){
        e.preventDefault()
        this.props.clearProducts();
        this.props.history.push('/index')
       this.props.searchProducts(this.state)
      
    }
    render() {
        return (

            <div className="search" >

                <input type="text" className="search-bar" 
                 placeholder="Search for the items..." 
                 onChange={this.handleChange} onBlur={this.handleFocus} 
                 />

                <div className="submit-button" onClick={this.handleSubmit}>
                    <div className="searchIcon">
                        {searchIcon}
                    </div>
                </div>

            </div >
        )
    }
}
export default withRouter(Search);