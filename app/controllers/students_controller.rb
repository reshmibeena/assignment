class StudentsController < ApplicationController
	def new
		@student = Student.new
	end
	def create
		 @student = Student.create(params_student)
		 
		 if @student.save
		 	redirect_to @student
		 else
		 	puts 'Not savedddddd'
		 end
	end
	def show
		@student = Student.find(params[:id])
	end
	def destroy
		@student = Student.find(params[:id])
		if @student.destroy
			flash[:notice] = "Student removed"
		else
			flash[:notice] = "Student not saved"
		end
		respond_to do |format|
			format.html  
			# format.json {head :no_content}
			format.js 
		end
	end
	private
	def params_student
		params.require(:student).permit(:name)
	end
end
