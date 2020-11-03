class Api::SearchsController < ApplicationController
    def index 
        if params_params[:name]
          
            @products = Product.search_name(params_params[:name]) 
        elsif params_params[:category] 
           
            @products = Product.search_category(params_params[:category]) 
        else 
             
            @products = Product.all 
        end 

        render 'api/products/index'
    end



     private 
     def params_params 
        params.require(:search).permit(:name, :category)
     end 

end