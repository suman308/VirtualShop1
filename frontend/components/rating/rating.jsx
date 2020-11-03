import React from 'react';
import { starIcon, halfStarIcon } from '../../../app/assets/images/icons'

class Rating extends React.Component {
    constructor(props) {
        super(props)

    }

    render() {
         
            const ratings = this.props.ratings
            const reviews = ratings.length
            let aveRating = 0
            if (ratings.length){
            for(let i = 0 ; i < ratings.length ; i++){
                aveRating  = aveRating + ratings[i].rating
                
                
            }
             aveRating = aveRating / (ratings.length)
             aveRating = aveRating.toFixed(2)
            }


             const rate = function(ratings){
                if(ratings !=0 ){
                 let starIcon1 = []
                 while(ratings >= 1 ){
                     starIcon1.push(<div className="starIcon">{starIcon}</div>)
                 ratings = ratings - 1; 
                 }
                 if (ratings > 0 && ratings < 1) {
                     starIcon1.push(<div className="starIcon" >{halfStarIcon}</div>)
                 }
                 return starIcon1;
             }
            
           }
             const star = rate(aveRating)
             
        return (
           

                <div className="star-rating">  
                    <h1 className="num-of-review"> {reviews} reviews</h1>
                    {star} 
                    <h1 className="aveRating"> ({aveRating}) </h1>
                </div>
               
             
                
         


        )
    }
}
export default Rating;