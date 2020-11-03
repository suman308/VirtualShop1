import React from  'react'; 
import { cartIcon} from '../../../app/assets/images/icons'
import { Link} from 'react-router-dom';
import Search from '../searchs/search_container'
class Greeting extends React.Component {
   constructor(props){
       super(props)
       this.handleClick = this.handleClick.bind(this)
   }
  
  handleClick(){
      this.props.clearProducts()
      this.props.getProducts()
  }


    render(){
          const {currentUser, logout, openModal} = this.props
            const navigation = ()=> (
                <nav className="login-signup">
                   
                        <Link to='/ reload' replace className="Virtual-logo" >
                        </Link>
                    
                   
                   <Search/>

                    <div  className="ls-inline-container">
                        <br className="offset" />
                        <div className="ls-inline" onClick={() => openModal('login')} > Sign in</div>
                    </div>
                
                </nav>
            );

            const personalGreeting = ()=> (
                <div>
                <div className="login-signup">
                        
                            <Link to='/ reload'  className="Virtual-logo" >
                            </Link>
                       
                            <Search />
                        

                      
                        <div className="ls-inline-container" >
                            <div className="greeting">
                                <img src="https://firebasestorage.googleapis.com/v0/b/slide-me-3f77d.appspot.com/o/Screen%20Shot%202020-10-24%20at%209.42.22%20PM.png?alt=media&token=0cc17c2a-db82-4f05-92c4-8ea3023f5717"  className="profile-pic"/>
                            <h1>{currentUser.username} </h1>
                            </div>
                                <div className="ls-inlineCT" >
                                    <Link to='/cart'  > 
                                    <div className="Cart-Icon" onClick={this.handleClick}>
                                            {cartIcon}
                                    </div>
                                           
                                     </Link>
                                </div>
                            <br />
                            <div className="divider"></div>
                                <br/>
                            <Link to='/'>
                                    <div className="ls-inline" onClick={logout}> Logout</div>
                            </Link>
                      </div>
                      
                </div>
                   
                </div>
            )
            return (
                currentUser ? personalGreeting() : navigation()
            )
       
    }
}
export default Greeting;