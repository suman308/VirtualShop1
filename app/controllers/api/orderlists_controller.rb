class Api::OrderlistsController < ApplicationController
    before_action :logged_in?, only:[:show, :update, :create]
    def index 
        @orderlists = OrderList.all
        if @orderlists 
            render :index
        else  
            render json: @orderlists.errorrs.full_messages, status: 422
        end 
    end 

    def show  
        @orderlist = OrderList.find_by(id: params[:id])
        
        render 'api/orderlists/show'
    end 

    def create 
        
        @orderlist= OrderList.create!(orderlistParams)
       
       if  @orderlist
            render 'api/orderlists/show'
       else 
            render json: @orderlist.errorrs.full_messages, status: 422
       end 

    end 

    def delete
        @orderlist = OrderList.find_by(Id: params[:id])
        if @orderlist 
            @orderlist.destroy 
        else 
            render json: @orderlist.errorrs.full_messages, status: 422
        end 
    end 

    private 
    def orderlistParams 
        
        params.require(:OrderList).permit(:product_id, :cart_id, :quantity, :checked_out)
       
    end 
end
