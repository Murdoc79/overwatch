class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  	def authorize
  		if User.count > 0 
	  		@user = User.find_by(id: session[:user_id])
				unless @user
					redirect_to login_url, notice: "Please log in"
				end 
				if @user.admin == false
					redirect_to controller: 'reports', action: 'main'
				end
			end
		end

end
