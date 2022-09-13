class StudentCoursesController < ApplicationController
  # def index
  #   @student_courses = Student_course.all
  # end

  # def show
  #   @user = current_user
  #   @student_course = Student_course.find(params[:id])
  #   authorize @studentcourse
  # end

  # def upload
  #   @user = current_user
  #   @course = course

  # end
# end




# ===========================================================

  def index
    @user = current_user
    @student_courses = Student_course.all
    @student_courses = policy_scope(student_course).order(created_at: :desc)
  end

  def show
    @user = current_user
    @student_course = Student_course.find(params[:id])
    authorize @student_course
  end

  def new
    @course = Course.find(params[:nanny_id])
    @user = current_user
    @student_course = Student_course.new
    authorize @student_course
  end

  def create
    @student_course = Student_course.new(student_course_params)
    @course = Course.find(params[:nanny_id])
    @user = current_user
    @student_course.user = current_user
    authorize @student_course

    if @student_course.save
      redirect_to student_courses_path
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @student_course = Student_course.find(params[:format])
    authorize @student_course
  end

  def update
    @student_course = Student_course.find(params[:id])

    @user = current_user
    @student_course.user = @user
    authorize @student_course

    if @student_course.update(student_course_params_update)
      redirect_to student_course_path
    else
        render :edit
    end
  end

  # def destroy
  #   @student_course = Student_course.find(params[:format])
  #   authorize @student_course

  #   if @student_course.destroy
  #     redirect_to student_courses_path
  #   else
  #   end
  # end

    private

  def student_course_params
    params.require(:student_course).permit(:file, :course_id)
  end

  def student_course_params_update
    params.require(:student_course).permit(:file)
  end

end
