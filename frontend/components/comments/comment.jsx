import React from 'react'
import{starIcon, halfStarIcon, emptyStarIcon} from '../../../app/assets/images/icons'
class CommentIndex extends React.Component {
    constructor(props){
        super(props)
    }

    render() {
        const user_id = this.props.user_id
        const name = this.props.name 
        const comment = this.props.body
        const ratings = this.props.ratings
        const rating = ratings.filter(rating=> rating.user_id == user_id)
        const rating1 = rating[0]
        const date = (this.props.date).split("T")[0]
        let num = rating1 ? rating1.rating : 0
        let rate = []
        while(num > 0) {
            if(num > 0 && num < 1){
                rate.push(<div className="small-rating">{halfStarIcon}</div>)
            } 
            rate.push(<div className="small-rating">{starIcon}</div>)
            num = num -1; 

            
        }
        return (
          
            <div className="comment-box" key={name}> 
                        <div className="profile-pic holder">
                                <img src=" https://firebasestorage.googleapis.com/v0/b/slide-me-3f77d.appspot.com/o/anon.png?alt=media&token=1af751be-072b-4dbf-b2a6-073ac77f915b" className="profile-pic" />
                        </div>

                        <div className="name-date-holder">
                            <h1 className="name">{name}:  {date}</h1>
                        </div>
                <div className="comment1">
                    <div className="small-rating-holder">{rate}</div>
                    
                    <div className="comment">"{comment}"</div>
                     
                </div>
               
                 </div>  
                 
            
            
        )
    }
}
export default CommentIndex;