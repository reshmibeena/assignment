require 'rails_helper'


RSpec.describe Student, type: :model do
  it "is valid with valid attributes" do
  	student = Student.create(id: '1',name: 'Reshmi')
  	expect(student).to be_valid
  end
  it "is not valid without a title" do
  	student = Student.create(id: '2',name: "devu")
  	expect(student).to be_valid
  end
  it "should have association" do
  end
end
