class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @sessions = current_user.sessions
    # @courses = current_user.courses
    # @course = Course.find(params[:id])
    @courses = Course.all
    @results = Result.where(course: @course)

    # @course = Course.find(params[:id])
    # @results = Results.all


    # @chatroom = Chatroom.find(params[:id])
    # @message = Message.new
    # @messages = @chatroom.messages
    # @chatroom_users = ChatroomUser.where(chatroom_id: @chatroom.id)
    # @chatrooms = Chatroom.all

    start_date = params.fetch(:start_date, Date.today).to_date
    @sessions = Session.where(start_date: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
    @sessions_fourth = @sessions.select {|session| session.start_date > DateTime.now}.sort_by(&:start_time).first(8)

    @red_sessions = @sessions_fourth.select {|session| (session.name.include?("TD") || session.name.include?("Exam") || session.name.include?("Homework")) && session.start_date < DateTime.now + 2}
    @yellow_sessions = @sessions_fourth.select {|session| (session.name.include?("TD") || session.name.include?("Exam") || session.name.include?("Homework")) && session.start_date >= DateTime.now + 2 && session.start_date < DateTime.now + 6}
    @green_sessions = @sessions_fourth.select {|session| (session.name.include?("TD") || session.name.include?("Exam") || session.name.include?("Homework")) && session.start_date > DateTime.now + 6}
  end

  def chatroom
  end

  def documents
    @messages = Message.left_joins(:attachments_attachments).where.not(active_storage_attachments: { id: nil })
  end

  private

  def date_range
    beginning = start_date.beginning_of_week
    ending    = start_date.end_of_week - 2.day
    (beginning..ending).to_a
  end

  # def course
  #   @course = courses_path(course.id)
  # end

end
