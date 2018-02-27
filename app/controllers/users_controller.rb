class UsersController < ApplicationController
  def api_show
    users = User.all
    render json:users
  end

  def create_new_user
    user = User.new
    user.email = params[:email]
    user.password = params[:password]
    user.dob = params[:dob]
    user.gender = params[:gender]
    user.country = params[:country]
    user.regdate = DateTime.now
    if user.save
      render json:user
    else
      render json:user
    end
  end
end
