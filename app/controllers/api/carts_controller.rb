class Api::CartsController < ApplicationController
    def index 
        @carts = Cart.all
        if @carts 
            render 'api/carts/index'
        
         else 
            render json: @carts.errors.full_messages, status: 422
         end 
    end 

    def show 
        @cart = Cart.find_by(user_id: params[:id])
        if @cart 
            render 'api/carts/show'
        else 
         render json: @cart.errors.full_messages, status: 422
        end 
    end 

    def create 
        @cart = Cart.new(cart_params)
        if @cart.save! 
            render 'api/carts/show'
        else 
            render json: @cart.errors.full_messages, status: 422
        end 

    end 
    def cart_params 
        params.require(:cart).permit(:user_id)
    end 
end
