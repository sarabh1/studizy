class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end
  # def show
  #   @sessions=Session.all
  # end

end
