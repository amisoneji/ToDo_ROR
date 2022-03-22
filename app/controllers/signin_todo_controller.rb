class SigninTodoController < ApplicationController
	#before_action :require_user_logged_in!
	def sessiontodo
		user= User.find_by(email: params[:email])
		if user.present? && user.authenticate(params[:password])			
			session[:user_id]=user.id
			redirect_to todo_lists_path,notice: "Logged In Successfully!!!"
		else
			flash[:alert]="Invalid User_name or password."
			render :new
		end
	end

end

