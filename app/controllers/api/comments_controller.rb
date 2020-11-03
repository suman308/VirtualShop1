class Api::CommentsController < ApplicationController
   before_action :logged_in?, only:[  :create]
    def index 
        @comments = Comment.where("product_id = ?", params[:productId])
        if @comments 
            
            render :index 
        else 
            render json: @comments.errorrs.full_messages, status: 422 
        end 
    end 

    def show 
        @comment = Comment.find(params[:id])
        if @comment 
            render :show 
        else 
            render json: @comment.errorrs.full_messages, status: 422 
        end 
    end 

    def edit 
        @comment 
    end 

    def create 
      
        @comment = Comment.new(params_params)
       
        if @comment 
            @comment.save!
          
            render :show
        else 
          
            render json: @comment.errorrs.full_messages, status: 422 
        end 
    end 
    def params_params 
       
        params.require(:comment).permit(:product_id, :body, :user_id, :id)
    end 
end

