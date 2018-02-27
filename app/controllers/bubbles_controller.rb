class BubblesController < ApplicationController
  def user_bubbles
    if session[user_id]
      bubbles = Bubble.where(user_id: session[:user_id])
      render json: {"status": "success", "bubbles": bubbles}
    else
      render json: {"status": "error", "message": "sorry no bubbles"}
    end
  end
end
