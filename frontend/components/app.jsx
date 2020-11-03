import React from 'react'

import ProductIndexContainer from './products/product_Index_container'
import {Route, Switch} from 'react-router-dom';
import {Redirect} from 'react-router'
import Modal from './modals/modal'
import GreetingContainer from './greetings/greeting_container'
import ProductShowContainer from './products/product_show_container'
import PageNotFound from './pageNotFound'
import NavbarContainer from '../components/navbar/navbar_container'
import OrderListContainer   from './orderlist/orderlist_container'
import IndexContainer from './products/index_container'
const App =()=> {
return (
  
     <div id= 'app'> 
          <header> 
            
              <Modal/>
              <GreetingContainer className="greeting"/> 
              <NavbarContainer/>
              
           </header> 
              
             <Switch>
                <Route path='/' exact component={IndexContainer }/>
               <Redirect exact from="/ reload" to="/" />
                <Route path='/index' exact component={ProductIndexContainer }/>
               <Route path='/product/show/:id'  component={ProductShowContainer}/>
               <Route path='/cart' exact component={OrderListContainer}/>
               <Route path="*"  component={PageNotFound}/>
             </Switch>
    </div>  
    


)
}
export default App 


