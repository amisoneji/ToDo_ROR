class SessionController < ApplicationController

	def destroy
		session[:user_id] = nil
		redirect_to root_path, notice: "Logged Out Successfully"
	end

	
	def new
	end 

	def create
		user= User.find_by(email: params[:email])
		if user.present? && user.authenticate(params[:password])			
			session[:user_id]=user.id
			redirect_to root_path,notice: "Logged In Successfully!!!"
		else
			flash[:alert]="Invalid User_name or password."
			render :new
		end
	end
 
end
