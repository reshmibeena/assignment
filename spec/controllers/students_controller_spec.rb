require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
	describe "GET#new" do
		it "assign a new student to @student" do
			get :new


		end
	end
	describe 'POST#create' do
		it 'is valid with correct parameters' do
  			@message = Student.create(name: "Reshmi")
  			expect(@message).to be_valid
  			
		end
	end

	describe 'GET#show' do
		it "shi=old dispaly the student" do
			@student = Student.create(id: '1',name: "Reshmi")
			student = Student.find(@student.id)
			expect(student).to be_valid

		end
	end

end
