class ArticlesController < ApplicationController
	def new
	end
	def create
		 @student = Student.create(params_student)
		 if @student.save
		 	puts "saveddddddd"
		 else
		 	puts 'Not savedddddd'
		 end
	end
	private
	def params_student
		params.require(:student).permit(:name)
	end
end
