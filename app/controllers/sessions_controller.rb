class SessionsController < ApplicationController
	def login
	end
	def create
		@student=Student.find_by_regno(params[:session][:regno])
		if @student && @student.find_by_password_digest(params[:session][:password_digest])
			session[:student_id]=@student.id
			redirect_to '/user_home'
		else
			redirect_to '/login'
		end
	end
	
	def destroy
		session[:student_id]=nil
		redirect_to '/'
	end
end
