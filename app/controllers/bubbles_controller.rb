
class BubblesController < ApplicationController
  def user_bubbles
    bubbles = Bubble.where(user_id: params[:id])
    render json:bubbles
  end

  def new_bubble
    b = Bubble.new
    b.fulldate = Date.today
    b.day = params[:day]
    b.month = params[:month]
    b.year = params[:year]
    b.mood = params[:mood]
    b.note = params[:note]
    b.user_id = params[:user_id]
    if b.save
      render json:b
    else
      render json:{"server": "doesnt love you"}
    end
  end

  def home
    "hi"
  end
end
  