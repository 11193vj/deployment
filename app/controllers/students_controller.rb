class StudentsController < ApplicationController
	def index
	end
	def home
	end
	def fill_choices
	end
	def view_choices
		@college=College.all
	end
	def add_choices
		@college=College.all
	end
	def edit_choices
	end
	def show
	end
	def new
		@student=Student.new
	end
	
	def create
		@student=Student.new(student_params)
		if @student.save
			session[:student_id]=@student.id
			redirect_to '/'
		else
			redirect_to '/new'
		end
	end
	private
		def student_params
			params.require(:student).permit(:name, :dob, :gender, :phone, :rank, :email, :regno, :password_digest)
		end
	

end
