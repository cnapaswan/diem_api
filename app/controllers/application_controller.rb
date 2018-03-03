class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  def home
    puts 'Im diem api'
    
  end
end
