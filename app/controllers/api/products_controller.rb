class Api::ProductsController < ApplicationController
    before_action :logged_in?, only:[ :update, :create]
    def index 
     
        @products = Product.all
        if @products 
            render :index 
        else 
            render json: @products.errorrs.full_messages, status: 422
        end 
    end     


    def show 
        
        @product = Product.find(params[:id]) 
        if @product 
            render 'api/products/show'
        else 
            render json: @product.errors.full_messages, status: 422
        end 
    end 

    def create 
        @product = Product.new(product_params)
        if @product.save 
            render 'api/products/show'
        else 
            render json: @product.errors.full_messages, status: 422
        end 
    end 

    def edit 
        @product = Product.find_by(id: params[:id])
        if @product 
               render 'api/products/show'
        else 
            render json: @product.errors.full_messages, status: 422
        end 
    end 

    def update 
           @product = Product.create(product_params) 
           if @product.save 
              render 'api/products/show'
           else 
               render json: @product.errors.full_messages, status: 422
           end 
    end 
   
    def search 
        @products = Product.search(params[:search])
        
        render :index 
    end 

    private 
    def product_params 
        
        params.permit(:product).require(:name, :details, :price, :category, :store_id, :image, :search)
    end 

    # def require_login 
    #     unless logged_in? 
    #         render json:["you must login to have this action"], status: 422
    #     end 
    # end 
end
