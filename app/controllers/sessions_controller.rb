class SessionsController < ApplicationController

  before_action :already_logged_in, only: :new

	layout "login"

  def new
  end

  def create
  	user = User.find_by(email: params[:email])
  	if user.try(:authenticate, params[:password])
  		session[:user_id] = user.id
  		redirect_to controller: 'reports', action: 'main'
  	else
  		redirect_to login_url, alert: "Invalid user/password combination"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_url, notice: "Logged Out"
  end

  protected

    def already_logged_in
      if session[:user_id] != nil
        redirect_to controller: 'reports', action: 'main'
      end
    end

end
