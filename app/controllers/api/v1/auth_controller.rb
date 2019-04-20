class Api::V1::AuthController < ApplicationController


  def login
    @user = User.find_by(email: params[:email])

   if @user && @user.authenticate(params[:password])
     render json: @user
   else
     render json: {errors: "Username or Password was wrong!"}
   end
  end

  def get_current_user
    user = User.find_by(id: request.headers["Authorization"])

    if user
      render json: user
    else
      render json: {errors: "Login Failed!"}
    end
  end


end
