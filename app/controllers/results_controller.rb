class ResultsController < ApplicationController
  def index
    @results = Result.all
    @courses = Course.all
    # @course = Course.find(params[:id])
  end

  def show
    @user = current_user
    @courses = Course.all
    @course = Course.find(params[:id])
    @results = Result.where(course_id: @course.id)
  end
end
