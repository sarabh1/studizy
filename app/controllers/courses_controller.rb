class CoursesController < ApplicationController
  def index
    @courses = Course.all
    @users = User.all
  end

  def show
    @user = current_user
    @course = Course.find(params[:id])
    @sessions = Session.where(course_id: @course.id)
  end

  def update
    @user = current_user
    @student_course = Course.find(params[:id])

    if @student_course.update(student_course_params_update)
      redirect_to course_path(@student_course.id)
    else
      render :edit
    end
  end

  private

  def student_course_params_update
    params.permit(:file)
  end
end
