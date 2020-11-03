import React from 'react'; 
import {withRouter} from 'react-router-dom'; 


class SessionForm extends React.Component {
    constructor(props){
        super()
        this.state ={
            username:'',
            password:'', 
            email:''
        }

        this.handleSubmit = this.handleSubmit.bind(this)
        this.handleDemo = this.handleDemo.bind(this)

    }

    update(type){
        return e=>this.setState({
            [type]: e.target.value 
        })
    }
    
    handleSubmit(e){
    
       e.preventDefault()
        const user = Object.assign({}, this.state)
        this.props.processForm(user).then(this.props.closeModal)

      
    }

    handleDemo(e){
         e.preventDefault();
        const user = { username : "demo", email:'demoemail', password:"password"}
         
      this.props.processForm(user).then(this.props.closeModal)
    }

    displayErrors(){
        const errors = this.props.errors 
        if (errors=== undefined) {
            return null;
        } else {
            return (
                <ul>
                    {errors.map((error, i) => (
                        <li key={i}> {error}</li>
                    ))}
                </ul>
            )

        }
        
    }

    render(){
            
            const emailInput = (<div className='Input-container'>
                    <label className="input-label">Email</label>
                    <span className="astrix">*</span>
                    <input type="text" value={this.state.email} onChange={this.update('email')} className="login-input" /> </div>)
                    
            const form = this.props.formType
            const display = (form === 'signup' ? emailInput : null)
            const name = (form === 'signup' ? "Sign Up" : "Sign In" )
            const actionType = (form === 'signup' ? "Register" : "Sign In")
            const titleText  = <h2>{name}</h2>
            
        return (
            
    <div className="form-outermost"> 
                <div  className="form-header">
                    
                 
                </div>
                 
                <div className="container">
                    <div className="title"> {titleText}</div>
                    <div className="Register"> </div>
                </div>

                <div className="container">
                        <div className="error-text" >{this.displayErrors()}</div>
                </div>  
                

                <div className="container">
                   <form onSubmit={this.handleSubmit} className="session-form">
                         
            
                             <div className='Input-container'>
                                     <label className="input-label">Username</label>
                                     <span className="astrix">*</span>
                                     <input type="text" value={this.state.username} onChange={this.update('username')} className="login-input" />
                             </div>


                             <div className='Input-container'>
                                    <label className="input-label">Password</label>
                                    <span className="astrix">*</span>
                                     <input type="password" value={this.state.password} onChange={this.update('password')} className="login-input" />

                             </div>


                               { form === 'signup' ?  emailInput : null}

                            <div className='Input-container'>
                                <label className="input-label"></label>
                            <button className="session-submit" type="submit" >{actionType}</button> 

                             </div>

                             <div className="Input-container">
                                  
                             </div>
                             
                            <div className='Input-container'> 
                                 {form === 'login' ? <button className="session-submit2" onClick={this.handleDemo}>Demo login</button> : null}
                            </div>

                            <div className='Input-container'>
                                 {this.props.otherForm}
                            </div>
                     </form>

               </div>

            </div>
        )
    }

}

export default withRouter(SessionForm)