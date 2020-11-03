class Api::RatingsController < ApplicationController
   before_action :logged_in?, only:[  :create]

def index 
    @ratings = Rating.where("product_id = ?", params[:productId])
  
    if @ratings 
        render :index
    else 
        render json: @ratings.errorrs.full_messages, status: 422 
    end 
end 

def show 
    @rating = Rating.find(params[:id]) 
    if @rating 
        render :show 
    else 
         render json: @rating.errorrs.full_messages, status: 422  
    end 
end 

def create 
    
    @rating = Rating.new(params_params) 
    if @rating 
        @rating.save! 
        render :show 
    else 
        render json: @rating.errorrs.full_messages, status:422 
    end 
end 
def params_params 
   
    params.require(:rating).permit(:product_id, :rating, :user_id, :id)
end 
end 

