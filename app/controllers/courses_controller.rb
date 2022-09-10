class CoursesController < ApplicationController


    def index
        @courses = Course.all
    end

    def show
      @user = current_user
      @course = Course.find(params[:id])
      authorize @course
    end

end
