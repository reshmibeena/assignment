require 'rails_helper'

RSpec.describe Exam, type: :model do
	exam1 = Exam.new
  it "should valid with valid attributes" do
  	student = Student.create(id: '1',name: 'Reshmi')
  	exam = Exam.create(name: 'IBPS',total_mark: 100 ,student_id: student.id)
  	expect(exam).to be_valid
  end
  it "should not valid witha a name" do
  	exam1.name = "Anything"
  	expect(exam1).to_not be_valid
  end
  
  # it { should belong_to(:student)}

end
