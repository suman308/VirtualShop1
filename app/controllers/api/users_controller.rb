class Api::UsersController < ApplicationController
    def create
    @user = User.new(user_params)
       
    if @user.save
     
      login(@user)

      Cart.create!(user_id: "#{@user.id}")
   
      render "api/users/show"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end
    
  def index 
    @users = User.all 
    render :index 
  end 


  def update 
      @user = User.find_by(id: params[:id]) 
      if @user && @user.update_attributes(user_params)
        render "api/users/show"
      elsif !@user 
        render :json["the selected user cannot be found"], status: 422
      else 
          render json: @user.errors.full_messages, status: 422
      end 
  end 
  
  private

  def user_params
    params.require(:user).permit(:username, :password, :email, :store )
  end

end
