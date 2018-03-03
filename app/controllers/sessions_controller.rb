
class SessionsController < ApplicationController

  def user_login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: { "status": "success", "user": user}
    else
      render json: {"status": "error", "message": "login unsuccessful"}
    end
  end

  def current_user
    user = User.find_by(email: params[:email])
    render json:user
  end

  def user_logout
    session[:user_id] = nil
    redirect_to '/login'
  end
 

end



