class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # before_action :set_time_zone, if: :user_signed_in?

  def after_sign_in_path_for(resource)
    dashboard_path
  end
end
