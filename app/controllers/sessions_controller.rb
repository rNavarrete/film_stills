class SessionsController < ApplicationController
  def create
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to page_path("user_dashboard")
    else
      flash[:error]
      redirect_to root_path
    end
  end
end
