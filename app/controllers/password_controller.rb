class PasswordController < ApplicationController

	before_action :require_user_logged_in!

	def edit
	end 
 	
 	def update
 		if Current.user.update(passwrod_params)
 			redirect_to sign_in_path,notice: "Password Updated Successfully!!!! Login with new password."
 		else
 			render :edit
 		end
 	end

 	private
 	def passwrod_params
 		params.require(:user).permit(:password,:password_confirmation)
 	end

end


