class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @sessions = current_user.sessions
    @courses = current_user.courses

    start_date = params.fetch(:start_date, Date.today).to_date
    @sessions = Session.where(start_date: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  def chatroom
  end
  
end
