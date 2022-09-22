class SessionsController < ApplicationController
  # def index
  #   @sessions = Session.all
  # end
  # def show
  #   @sessions=Session.all
  # end
  def index
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date
    @sessions = Session.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  private

  def session_params
    params.require(:session).permit(:name, :tag_list) ## Rails 4 strong params usage
  end
end



# ===============
# @user.tag_list.add("awesome")   # add a single tag. alias for <<
# @user.tag_list.remove("awesome") # remove a single tag
# @user.save # save to persist tag_list
# == plusieurs tags
# @user.tag_list.add("awesome", "slick")
# @user.tag_list.remove("awesome", "slick")
# @user.save

# @user.tag_list = "awesome, slick, hefty"
# @user.save
# @user.reload
# @user.tags
