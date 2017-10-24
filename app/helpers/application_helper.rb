module ApplicationHelper

	def is_electrician?
		@user = User.find_by(id: session[:user_id])
		if @user != nil
			@user.electrician
		end
	end

	def is_admin?
		@user = User.find_by(id: session[:user_id])
		if @user != nil
			@user.admin
		end
	end 
	
end
