class StudentCoursesController < ApplicationController


  def edit
    @user = current_user
    @student_course = Course.find(params[:id])
    # authorize @student_course
  end

end 

#   def update
#     @student_course = Student_course.find(params[:id])

#     @user = current_user
#     @student_course.user = @user
#     authorize @student_course

#     if @student_course.update(student_course_params_update)
#       redirect_to student_course_path
#     else
#         render :edit
#     end
#   end

#     private

#   def student_course_params
#     params.require(:student_course).permit(:file, :course_id)
#   end

#   def student_course_params_update
#     params.require(:student_course).permit(:file)
#   end

# end
