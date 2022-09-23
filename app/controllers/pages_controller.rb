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
    @sessions_fourth = @sessions.select {|session| session.start_date > DateTime.now}.sort_by(&:start_time).first(11)

    @red_sessions = @sessions_fourth.select {|session| (session.name.include?("TD") || session.name.include?("Exam") || session.name.include?("Homework")) && session.start_date <= DateTime.now + 2}
    @yellow_sessions = @sessions_fourth.select {|session| (session.name.include?("TD") || session.name.include?("Exam") || session.name.include?("Homework")) && session.start_date > DateTime.now + 3 && session.start_date < DateTime.now + 6}
    @green_sessions = @sessions_fourth.select {|session| (session.name.include?("TD") || session.name.include?("Exam") || session.name.include?("Homework")) && session.start_date > DateTime.now + 6}
  end

  def chatroom
  end

  # def course
  #   @course = courses_path(course.id)
  # end

end
