class SessionsController < ApplicationController
  # def index
  #   @user = current_user
  #   @sessions = Session.all
  #   @sessions = policy_scope(session).order(created_at: :desc)
# end
    def index
      # Scope your query to the dates being shown:
      start_date = params.fetch(:start_date, Date.today).to_date
      @sessions = Session.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
    end


  def show
    @user = current_user
    @session = Session.find(params[:id])
    authorize @session
  end

  def new
    @course = Course.find(params[:course_id])
    @user = current_user
    @session = Session.new
    authorize @Session
  end

  def create
    @session = Session.new(session_params)
    @course = Course.find(params[:course_id])
    @user = current_user
    @session.user = current_user
    authorize @session

      if @session.save
         redirect_to course_path
      else
        render :new
      end
  end

  private

  def session_params
    params.require(:session).permit(:end_date, :start_date, :course_id, :status)
  end
end
