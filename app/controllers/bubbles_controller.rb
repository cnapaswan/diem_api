
class BubblesController < ApplicationController
  def user_bubbles
    bubbles = Bubble.where(user_id: params[:id])
    render json:bubbles
  end

  def new_bubble

    today_entered = Bubble.find_by(fulldate: Date.today, user_id: params[:user_id])

    if today_entered
      update_bubble = today_entered
      update_bubble.mood = params[:mood]
      update_bubble.note = params[:note]
      update_bubble.user_id = params[:user_id]
      if update_bubble.save
        render json:update_bubble
      else
        render json:{"server": "doesnt love you"}
      end
    else
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
  end

  def home
    render json:{"server": "loves you, some time"}
  end
end
  